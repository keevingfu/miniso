MINISO内容驱动的智能增长决策系统项目目录结构
以下是基于开发文档和所有模块代码创建的完整项目目录结构和文件名：
miniso-growth-system/
│
├── public/
│   ├── index.html
│   ├── favicon.ico
│   ├── logo.svg
│   └── assets/
│       ├── images/
│       │   ├── miniso-logo.png
│       │   └── placeholder/
│       │       └── 400/320  # 占位图像
│       └── fonts/
│
├── src/
│   ├── index.js                  # 应用入口点
│   ├── App.js                    # 主应用组件
│   ├── routes.js                 # 路由配置
│   │
│   ├── pages/                    # 主页面组件
│   │   ├── Portal/
│   │   │   ├── index.jsx         # 更新后的门户页面
│   │   │   └── PortalStyles.css
│   │   │
│   │   ├── Overview/
│   │   │   ├── index.jsx         # Overview总览模块
│   │   │   └── OverviewStyles.css
│   │   │
│   │   ├── Insight/
│   │   │   ├── index.jsx         # Insight数据洞察模块
│   │   │   └── InsightStyles.css
│   │   │
│   │   ├── KocKol/
│   │   │   ├── index.jsx         # KOC & KOL内容生产模块
│   │   │   └── KocKolStyles.css
│   │   │
│   │   ├── Feeds/
│   │   │   ├── index.jsx         # Feeds内容分发模块
│   │   │   └── FeedsStyles.css
│   │   │
│   │   ├── Private/
│   │   │   ├── index.jsx         # Private Domain私域赋能模块
│   │   │   └── PrivateStyles.css
│   │   │
│   │   ├── DeepResearch/
│   │   │   ├── index.jsx         # Deep Research深度研究模块
│   │   │   └── DeepResearchStyles.css
│   │   │
│   │   ├── Login/
│   │   │   └── index.jsx         # 登录页面
│   │   │
│   │   ├── Settings/
│   │   │   └── index.jsx         # 系统设置页面
│   │   │
│   │   └── NotFound/
│   │       └── index.jsx         # 404页面
│   │
│   ├── components/               # 共享组件
│   │   ├── ui/                   # shadcn/ui组件
│   │   │   ├── alert.jsx
│   │   │   ├── button.jsx
│   │   │   ├── card.jsx
│   │   │   └── ...
│   │   │
│   │   ├── layout/               # 布局组件
│   │   │   ├── Sidebar.jsx
│   │   │   ├── Header.jsx
│   │   │   ├── MainContent.jsx
│   │   │   └── Footer.jsx
│   │   │
│   │   ├── charts/               # 图表组件
│   │   │   ├── BarChartComponent.jsx
│   │   │   ├── LineChartComponent.jsx
│   │   │   ├── PieChartComponent.jsx
│   │   │   └── RadarChartComponent.jsx
│   │   │
│   │   ├── common/               # 通用组件
│   │   │   ├── DataCard.jsx
│   │   │   ├── StatisticsCard.jsx
│   │   │   ├── ProgressBar.jsx
│   │   │   ├── SearchBar.jsx
│   │   │   ├── FilterDropdown.jsx
│   │   │   ├── TabPanel.jsx
│   │   │   ├── Pagination.jsx
│   │   │   └── DataTable.jsx
│   │   │
│   │   ├── koc/                  # KOC模块特定组件
│   │   │   ├── KocCard.jsx
│   │   │   ├── KocList.jsx
│   │   │   ├── KocForm.jsx
│   │   │   └── KocStats.jsx
│   │   │
│   │   ├── insight/              # Insight模块特定组件
│   │   │   ├── TrendCard.jsx
│   │   │   ├── KeywordTable.jsx
│   │   │   └── SentimentAnalysis.jsx
│   │   │
│   │   ├── feeds/                # Feeds模块特定组件
│   │   │   ├── CampaignCard.jsx
│   │   │   ├── ChannelStats.jsx
│   │   │   └── AdPerformance.jsx
│   │   │
│   │   ├── private/              # Private模块特定组件
│   │   │   ├── LandingPageStats.jsx
│   │   │   ├── ChannelPerformance.jsx
│   │   │   └── TrafficSource.jsx
│   │   │
│   │   └── research/             # Research模块特定组件
│   │       ├── SearchBox.jsx
│   │       ├── ResearchCard.jsx
│   │       ├── InsightsList.jsx
│   │       └── RecommendationCard.jsx
│   │
│   ├── services/                 # API服务和数据获取
│   │   ├── api.js                # 基础API配置
│   │   ├── auth.js               # 认证服务
│   │   ├── overview.js           # 总览数据服务
│   │   ├── insight.js            # 洞察数据服务
│   │   ├── kocKol.js             # KOC&KOL数据服务
│   │   ├── feeds.js              # Feeds数据服务
│   │   ├── private.js            # Private Domain数据服务
│   │   ├── deepResearch.js       # Deep Research数据服务
│   │   └── perplexity.js         # Perplexity API集成
│   │
│   ├── store/                    # 状态管理
│   │   ├── index.js              # 主Store导出
│   │   ├── reducers/             # Reducers
│   │   │   ├── authReducer.js
│   │   │   ├── overviewReducer.js
│   │   │   ├── insightReducer.js
│   │   │   ├── kocKolReducer.js
│   │   │   ├── feedsReducer.js
│   │   │   ├── privateReducer.js
│   │   │   └── researchReducer.js
│   │   │
│   │   └── actions/              # Actions
│   │       ├── authActions.js
│   │       ├── overviewActions.js
│   │       ├── insightActions.js
│   │       ├── kocKolActions.js
│   │       ├── feedsActions.js
│   │       ├── privateActions.js
│   │       └── researchActions.js
│   │
│   ├── utils/                    # 工具函数
│   │   ├── formatting.js         # 数据格式化
│   │   ├── calculations.js       # 计算工具
│   │   ├── validation.js         # 验证函数
│   │   ├── dateTime.js           # 日期时间处理
│   │   └── analytics.js          # 分析工具
│   │
│   ├── hooks/                    # 自定义Hooks
│   │   ├── useDataFetching.js
│   │   ├── useAuthentication.js
│   │   ├── useChartData.js
│   │   └── useFilters.js
│   │
│   ├── constants/                # 常量定义
│   │   ├── apiEndpoints.js
│   │   ├── routes.js
│   │   ├── chartColors.js
│   │   └── statusCodes.js
│   │
│   └── assets/                   # 静态资源
│       ├── styles/
│       │   ├── variables.css     # CSS变量
│       │   ├── global.css        # 全局样式
│       │   └── themes/
│       │       ├── default.css
│       │       └── dark.css
│       │
│       ├── icons/                # 自定义图标
│       └── images/               # 项目内图像
│
├── config/                       # 配置文件
│   ├── webpack.config.js
│   └── .env.example
│
├── scripts/                      # 项目脚本
│   ├── build.js
│   └── start.js
│
├── package.json                  # 项目依赖
├── README.md                     # 项目说明
├── .gitignore
├── .eslintrc.js                  # ESLint配置
└── .prettierrc                   # Prettier配置
主要页面组件文件详情

Portal (门户) - src/pages/Portal/index.jsx

项目入口界面
所有模块的导航链接
概览仪表板

Overview (总览) - src/pages/Overview/index.jsx

全局数据概览
关键指标仪表盘
渠道分布分析

Insight (数据洞察) - src/pages/Insight/index.jsx

搜索洞察
用户声音洞察(VOC)
爆款视频洞察
爆款因子分析

KOC & KOL (内容生产) - src/pages/KocKol/index.jsx

内容趋势分析
KOC/KOL管理
自营矩阵号管理
内容管理
用户分析

Feeds (内容分发) - src/pages/Feeds/index.jsx

广告总体效果
渠道效果
平台广告投放
产品销售表现

Private Domain (私域赋能) - src/pages/Private/index.jsx

落地页效果
私域渠道(SCRM)效果
DTC网站流量

Deep Research (深度研究) - src/pages/DeepResearch/index.jsx

研究查询界面
研究历史
深度分析报告
集成推荐

主要依赖包
jsonCopy{
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-router-dom": "^6.22.0",
    "recharts": "^2.10.0",
    "lucide-react": "^0.323.0",
    "tailwindcss": "^3.4.0",
    "axios": "^1.6.2",
    "lodash": "^4.17.21",
    "date-fns": "^3.0.0",
    "redux": "^5.0.0",
    "react-redux": "^9.0.0",
    "redux-thunk": "^3.1.0",
    "@shadcn/ui": "^0.1.2"
  },
  "devDependencies": {
    "@babel/core": "^7.23.5",
    "@babel/preset-env": "^7.23.5",
    "@babel/preset-react": "^7.23.5",
    "eslint": "^8.55.0",
    "eslint-plugin-react": "^7.33.2",
    "prettier": "^3.1.0",
    "webpack": "^5.89.0",
    "webpack-cli": "^5.1.4",
    "webpack-dev-server": "^4.15.1"
  }
}
这个目录结构遵循了模块化的原则，将各个功能组件分开管理，同时保持了良好的可扩展性和可维护性。
