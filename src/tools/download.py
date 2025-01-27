from huggingface_hub import snapshot_download

snapshot_download(
    repo_id="sentence-transformers/all-MiniLM-L6-v2",
    local_dir=r"D:\code\OmniThink\src\tools\models\all-MiniLM-L6-v2",
    resume_download=True
)