import os
import collections
from pathlib import Path

def scan_file_types(directory):
    """扫描目录下所有文件类型"""
    file_types = collections.defaultdict(int)
    
    for root, _, files in os.walk(directory):
        for file in files:
            # 获取文件扩展名
            ext = os.path.splitext(file)[1].lower()
            if ext:
                file_types[ext] += 1
                
    return file_types

def generate_decrypt_script(file_types):
    """根据文件类型生成解密批处理脚本"""
    script_content = "@echo off\nsetlocal enabledelayedexpansion\n\n"
    
    for ext in file_types:
        if not ext:  # 跳过没有扩展名的文件
            continue
            
        # 为每种文件类型生成解密命令
        script_content += f":: {ext[1:]} 文件解密\n"
        script_content += f'echo 正在处理 {ext} 文件...\n'
        script_content += f'for /r %%i in (*{ext}) do (\n'
        script_content += '    ren "%%i" "%%~ni.tmp"\n'
        script_content += f'    copy "%%~dpni.tmp" "%%~dpni{ext}"\n'
        script_content += '    del /F /Q "%%~dpni.tmp"\n'
        script_content += ')\n\n'
    
    script_content += "echo 所有文件解密完成！\npause"
    
    # 保存解密脚本
    with open('auto_decrypt.bat', 'w', encoding='utf-8') as f:
        f.write(script_content)

def main():
    # 获取当前目录
    current_dir = os.getcwd()
    print(f"正在扫描目录: {current_dir}")
    
    # 扫描文件类型
    file_types = scan_file_types(current_dir)
    
    # 显示发现的文件类型
    print("\n发现的文件类型:")
    for ext, count in file_types.items():
        print(f"{ext}: {count} 个文件")
    
    # 生成解密脚本
    generate_decrypt_script(file_types)
    print("\n解密脚本已生成: auto_decrypt.bat")

if __name__ == "__main__":
    main() 