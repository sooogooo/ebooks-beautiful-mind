# 部署与使用指南 / Deployment & Usage Guide

## 中文版本

### 🚀 快速开始

#### 系统要求
- Python 3.7 或更高版本
- Git
- 支持现代浏览器（Chrome、Firefox、Safari、Edge）

#### 环境准备
```bash
# 克隆项目
git clone https://github.com/sooogooo/ebooks-beautiful-mind.git
cd ebooks-beautiful-mind

# 检查Python版本
python --version  # 或 python3 --version
```

### 📦 部署方式

#### 方式一：使用自动部署脚本（推荐）

```bash
# 进入部署目录
cd mkdocs-website

# 运行部署脚本
./deploy.sh
```

部署脚本会自动：
1. 创建Python虚拟环境
2. 安装所有依赖包
3. 构建静态网站
4. 启动本地预览服务

#### 方式二：手动部署

```bash
# 1. 进入网站目录
cd mkdocs-website

# 2. 创建虚拟环境（推荐）
python -m venv venv

# 3. 激活虚拟环境
# Linux/Mac:
source venv/bin/activate
# Windows:
venv\Scripts\activate

# 4. 安装依赖
pip install -r requirements.txt

# 5. 构建网站
mkdocs build

# 6. 本地预览
mkdocs serve
```

### 🌐 在线部署选项

#### 1. Netlify 部署
1. 登录 [Netlify](https://netlify.com)
2. 拖拽 `mkdocs-website/site` 文件夹到部署区域
3. 自动获得 HTTPS 访问链接

#### 2. Vercel 部署
```bash
# 安装Vercel CLI
npm install -g vercel

# 部署到Vercel
cd mkdocs-website/site
vercel
```

#### 3. GitHub Pages 部署
```bash
# 推送到GitHub仓库
git add .
git commit -m "Deploy to GitHub Pages"
git push origin main

# 在仓库设置中启用GitHub Pages
# 选择source为main分支的/docs文件夹或者使用GitHub Actions
```

#### 4. 云服务器部署

**阿里云 OSS:**
```bash
# 使用阿里云CLI上传
ossutil cp -r mkdocs-website/site/ oss://your-bucket-name/
```

**腾讯云 COS:**
```bash
# 使用腾讯云CLI上传
coscli cp -r mkdocs-website/site/ cos://your-bucket-name/
```

**传统Web服务器:**
```bash
# 使用SCP上传到服务器
scp -r mkdocs-website/site/* user@server:/var/www/html/

# 或使用FTP工具上传site文件夹内容
```

### 📝 使用说明

#### 本地阅读
1. 部署成功后，访问 `http://localhost:8000`
2. 使用左侧导航栏浏览各章节
3. 使用搜索功能快速查找内容
4. 支持手机端响应式阅读

#### 章节结构
```
├── 序言 - 了解写作背景
├── 引言 - 真实案例导入
├── 核心章节
│   ├── 变美动机分析
│   ├── 医美决策心理学
│   ├── 医美营销心理学
│   ├── 不同年龄段美丽心理
│   ├── 自我系统重建
│   ├── 内在自信培养
│   ├── 美丽与幸福关系
│   └── 美丽规划师
├── 结语 - 总结与展望
├── 心理学效应集锦 - 专业术语
└── 福利官联系 - 专业咨询
```

#### 阅读建议
1. **顺序阅读**: 建议按章节顺序阅读，逐步建立知识体系
2. **重点标记**: 使用浏览器书签功能标记重要章节
3. **实践应用**: 结合个人情况使用书中的评估工具
4. **反复查阅**: 遇到决策时可反复查阅相关章节

### 🔧 自定义配置

#### 修改主题样式
```bash
# 编辑自定义CSS
vim mkdocs-website/docs/stylesheets/extra.css

# 重新构建
mkdocs build
```

#### 添加自定义内容
```bash
# 在docs目录下添加新的Markdown文件
touch mkdocs-website/docs/new-chapter.md

# 在mkdocs.yml中添加导航项
vim mkdocs-website/mkdocs.yml
```

#### 修改网站配置
```yaml
# 编辑mkdocs-website/mkdocs.yml
site_name: 您的网站名称
site_description: 您的网站描述
site_author: 您的姓名
```

### 📱 移动端优化

本项目已针对移动端进行优化：
- 响应式设计，支持各种屏幕尺寸
- 触摸友好的导航界面
- 优化的字体大小和行间距
- 快速加载和离线缓存支持

### 🔍 搜索功能

- **全文搜索**: 支持中文分词搜索
- **实时建议**: 输入时显示搜索建议
- **高亮显示**: 搜索结果中高亮关键词
- **快捷键**: 使用 `/` 快速激活搜索

### 📊 统计与分析

如需添加访问统计：
```html
<!-- 在overrides/partials/footer.html中添加 -->
<script>
// Google Analytics或百度统计代码
</script>
```

### 🛠️ 故障排除

#### 常见问题

**1. Python版本不兼容**
```bash
# 检查Python版本
python --version
# 如果版本过低，请升级到3.7+
```

**2. 依赖安装失败**
```bash
# 使用国内镜像源
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
```

**3. 构建失败**
```bash
# 清理缓存重新构建
rm -rf site/
mkdocs build --clean
```

**4. 端口占用**
```bash
# 使用其他端口
mkdocs serve --dev-addr=127.0.0.1:8001
```

### 📞 技术支持

如遇技术问题，请：
1. 查看 [GitHub Issues](https://github.com/sooogooo/ebooks-beautiful-mind/issues)
2. 查看MkDocs官方文档
3. 联系项目维护者

---

## English Version

### 🚀 Quick Start

#### System Requirements
- Python 3.7 or higher
- Git
- Modern browsers (Chrome, Firefox, Safari, Edge)

#### Environment Setup
```bash
# Clone the project
git clone https://github.com/sooogooo/ebooks-beautiful-mind.git
cd ebooks-beautiful-mind

# Check Python version
python --version  # or python3 --version
```

### 📦 Deployment Methods

#### Method 1: Automated Deployment Script (Recommended)

```bash
# Navigate to deployment directory
cd mkdocs-website

# Run deployment script
./deploy.sh
```

The deployment script will automatically:
1. Create Python virtual environment
2. Install all dependencies
3. Build static website
4. Start local preview service

#### Method 2: Manual Deployment

```bash
# 1. Enter website directory
cd mkdocs-website

# 2. Create virtual environment (recommended)
python -m venv venv

# 3. Activate virtual environment
# Linux/Mac:
source venv/bin/activate
# Windows:
venv\Scripts\activate

# 4. Install dependencies
pip install -r requirements.txt

# 5. Build website
mkdocs build

# 6. Local preview
mkdocs serve
```

### 🌐 Online Deployment Options

#### 1. Netlify Deployment
1. Login to [Netlify](https://netlify.com)
2. Drag and drop `mkdocs-website/site` folder to deployment area
3. Automatically get HTTPS access link

#### 2. Vercel Deployment
```bash
# Install Vercel CLI
npm install -g vercel

# Deploy to Vercel
cd mkdocs-website/site
vercel
```

#### 3. GitHub Pages Deployment
```bash
# Push to GitHub repository
git add .
git commit -m "Deploy to GitHub Pages"
git push origin main

# Enable GitHub Pages in repository settings
# Select source as main branch /docs folder or use GitHub Actions
```

#### 4. Cloud Server Deployment

**Alibaba Cloud OSS:**
```bash
# Upload using Alibaba Cloud CLI
ossutil cp -r mkdocs-website/site/ oss://your-bucket-name/
```

**Tencent Cloud COS:**
```bash
# Upload using Tencent Cloud CLI
coscli cp -r mkdocs-website/site/ cos://your-bucket-name/
```

**Traditional Web Server:**
```bash
# Upload to server using SCP
scp -r mkdocs-website/site/* user@server:/var/www/html/

# Or use FTP tools to upload site folder contents
```

### 📝 Usage Instructions

#### Local Reading
1. After successful deployment, visit `http://localhost:8000`
2. Use left navigation bar to browse chapters
3. Use search function to quickly find content
4. Supports mobile responsive reading

#### Chapter Structure
```
├── Preface - Understanding writing background
├── Introduction - Real case studies
├── Core Chapters
│   ├── Beauty Motivation Analysis
│   ├── Aesthetic Decision Psychology
│   ├── Aesthetic Marketing Psychology
│   ├── Beauty Psychology at Different Ages
│   ├── Self-System Reconstruction
│   ├── Inner Confidence Building
│   ├── Beauty and Happiness Relationship
│   └── Beauty Planner
├── Epilogue - Summary and prospects
├── Psychology Effects Collection - Professional terms
└── Consultant Contact - Professional consultation
```

#### Reading Recommendations
1. **Sequential Reading**: Recommended to read chapters in order to build knowledge system
2. **Highlighting**: Use browser bookmarks to mark important chapters
3. **Practical Application**: Use assessment tools in the book based on personal situations
4. **Repeated Reference**: Re-read relevant chapters when making decisions

### 🔧 Custom Configuration

#### Modify Theme Styles
```bash
# Edit custom CSS
vim mkdocs-website/docs/stylesheets/extra.css

# Rebuild
mkdocs build
```

#### Add Custom Content
```bash
# Add new Markdown files in docs directory
touch mkdocs-website/docs/new-chapter.md

# Add navigation items in mkdocs.yml
vim mkdocs-website/mkdocs.yml
```

#### Modify Website Configuration
```yaml
# Edit mkdocs-website/mkdocs.yml
site_name: Your Website Name
site_description: Your Website Description
site_author: Your Name
```

### 📱 Mobile Optimization

This project is optimized for mobile devices:
- Responsive design supporting various screen sizes
- Touch-friendly navigation interface
- Optimized font sizes and line spacing
- Fast loading and offline cache support

### 🔍 Search Function

- **Full-text Search**: Supports Chinese word segmentation search
- **Real-time Suggestions**: Shows search suggestions while typing
- **Highlight Display**: Highlights keywords in search results
- **Shortcut Keys**: Use `/` to quickly activate search

### 📊 Statistics & Analytics

To add visitor statistics:
```html
<!-- Add to overrides/partials/footer.html -->
<script>
// Google Analytics or Baidu Statistics code
</script>
```

### 🛠️ Troubleshooting

#### Common Issues

**1. Python Version Incompatible**
```bash
# Check Python version
python --version
# If version is too low, please upgrade to 3.7+
```

**2. Dependency Installation Failed**
```bash
# Use domestic mirror source
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
```

**3. Build Failed**
```bash
# Clean cache and rebuild
rm -rf site/
mkdocs build --clean
```

**4. Port Occupied**
```bash
# Use different port
mkdocs serve --dev-addr=127.0.0.1:8001
```

### 📞 Technical Support

For technical issues, please:
1. Check [GitHub Issues](https://github.com/sooogooo/ebooks-beautiful-mind/issues)
2. Refer to MkDocs official documentation
3. Contact project maintainers

---

## 🎯 Best Practices

### For Readers
- **Create Reading Notes**: Keep track of insights and key concepts
- **Use Assessment Tools**: Apply the psychological assessment frameworks provided
- **Share Responsibly**: Share insights while respecting intellectual property
- **Provide Feedback**: Help improve the content through constructive feedback

### For Developers
- **Regular Updates**: Keep dependencies updated for security and performance
- **Performance Monitoring**: Monitor site loading times and user experience
- **Content Validation**: Ensure all content renders correctly across devices
- **Backup Strategy**: Maintain regular backups of customizations

### For Organizations
- **Training Integration**: Incorporate into professional development programs
- **Compliance Considerations**: Ensure usage aligns with organizational policies
- **Knowledge Sharing**: Facilitate group discussions and case studies
- **Impact Measurement**: Track usage and learning outcomes

---

*This comprehensive guide ensures successful deployment and optimal usage of the Beautiful Mind Map project across various environments and use cases.*