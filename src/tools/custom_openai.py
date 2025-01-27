import dspy
import os
import openai

class CustomOpenAI(dspy.OpenAI):
    def __init__(
        self,
        model: str = "gpt-3.5-turbo",
        api_key: str = None,
        api_base: str = "https://api.gpt.ge/v1",
        **kwargs
    ):
        if api_key is None:
            api_key = os.getenv("OPENAI_API_KEY")
        
        # 配置OpenAI客户端
        openai.api_key = api_key
        openai.base_url = api_base
        openai.default_headers = {
            "Content-Type": "application/json",
            "Authorization": f"Bearer {api_key}"
        }
        
        super().__init__(
            model=model,
            api_key=api_key,
            api_base=api_base,
            **kwargs
        )

# 配置DSPy使用自定义API
def configure_custom_openai():
    api_key = os.getenv("OPENAI_API_KEY")
    if not api_key:
        raise ValueError("Please set OPENAI_API_KEY environment variable")
    
    model = CustomOpenAI(
        model="gpt-3.5-turbo",
        api_key=api_key,
        api_base="https://api.gpt.ge/v1"
    )
    
    dspy.configure(lm=model) 