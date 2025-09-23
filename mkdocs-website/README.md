# 美丽心灵地图 - MkDocs网站部署包

这是一个完整的MkDocs网站部署包，包含了所有必要的文件和配置。

## 文件结构

```
mkdocs-website/
├── mkdocs.yml          # MkDocs配置文件
├── requirements.txt    # Python依赖包
├── deploy.sh          # 部署脚本
├── README.md          # 说明文档
├── docs/              # 文档源文件
├── overrides/         # 自定义模板
└── site/              # 构建后的静态网站文件（运行deploy.sh后生成）
```

## 快速部署

### 方法1：使用部署脚本（推荐）

```bash
cd mkdocs-website
./deploy.sh
```

### 方法2：手动部署

```bash
# 1. 进入目录
cd mkdocs-website

# 2. 安装依赖
pip install -r requirements.txt

# 3. 构建网站
mkdocs build

# 4. 上传site文件夹到您的Web服务器
```

## 部署选项

### 静态网站托管服务
- **Netlify**: 拖拽 `site` 文件夹到 netlify.com
- **Vercel**: 使用 Vercel CLI 或 Web 界面上传
- **GitHub Pages**: 推送到 GitHub 仓库并启用 Pages
- **阿里云OSS**: 上传 `site` 文件夹内容到 OSS 存储桶
- **腾讯云COS**: 上传到 COS 存储桶并配置静态网站

### 传统Web服务器
将 `site` 文件夹中的所有文件上传到您的Web服务器根目录。

## 本地预览

```bash
cd mkdocs-website
pip install -r requirements.txt
mkdocs serve
```

然后访问 http://127.0.0.1:8000

## 注意事项

1. 确保您的服务器支持Python 3.7+
2. 如果遇到依赖问题，请使用虚拟环境：
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   # 或 venv\Scripts\activate  # Windows
   pip install -r requirements.txt
   ```

3. 某些托管服务可能需要额外的配置文件（如.gitignore、netlify.toml等），请根据具体服务要求添加。

## 技术栈

- **MkDocs**: 静态网站生成器
- **Material for MkDocs**: 现代化主题
- **PyMdown Extensions**: Markdown扩展功能
- **MkDocs Minify Plugin**: 代码压缩优化

---

© 2024 重庆联合丽格科技有限公司