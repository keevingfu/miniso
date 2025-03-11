# PowerShell script to create the MINISO project structure

# Create root directories
$directories = @(
    # Public directories
    "public",
    "public\assets",
    "public\assets\images",
    "public\assets\images\placeholder",
    "public\assets\images\placeholder\400",
    "public\assets\fonts",
    
    # Source directories
    "src",
    "src\pages",
    "src\pages\portal",
    "src\pages\overview",
    "src\pages\insight",
    "src\pages\kockol",
    "src\pages\feeds",
    "src\pages\private",
    "src\pages\deepresearch",
    "src\pages\login",
    "src\pages\settings",
    "src\pages\notfound",
    
    "src\components",
    "src\components\ui",
    "src\components\layout",
    "src\components\charts",
    "src\components\common",
    "src\components\koc",
    "src\components\insight",
    "src\components\feeds",
    "src\components\private",
    "src\components\research",
    
    "src\services",
    "src\store",
    "src\store\reducers",
    "src\store\actions",
    "src\utils",
    "src\hooks",
    "src\constants",
    "src\assets",
    "src\assets\styles",
    "src\assets\styles\themes",
    "src\assets\icons",
    "src\assets\images",
    
    # Config directories
    "config",
    "scripts"
)

foreach ($dir in $directories) {
    $path = "miniso-growth-system\$dir"
    if (!(Test-Path -Path $path)) {
        New-Item -ItemType Directory -Path $path -Force
        Write-Host "Created directory: $path"
    }
}

# Create files
$files = @(
    # Public files
    "public\index.html",
    "public\favicon.ico",
    "public\logo.svg",
    "public\assets\images\miniso-logo.png",
    
    # Root source files
    "src\index.js",
    "src\app.js",
    "src\routes.js",
    
    # Page files
    "src\pages\portal\index.jsx",
    "src\pages\portal\portalstyles.css",
    "src\pages\overview\index.jsx",
    "src\pages\overview\overviewstyles.css",
    "src\pages\insight\index.jsx",
    "src\pages\insight\insightstyles.css",
    "src\pages\kockol\index.jsx",
    "src\pages\kockol\kockolstyles.css",
    "src\pages\feeds\index.jsx",
    "src\pages\feeds\feedsstyles.css",
    "src\pages\private\index.jsx",
    "src\pages\private\privatestyles.css",
    "src\pages\deepresearch\index.jsx",
    "src\pages\deepresearch\deepresearchstyles.css",
    "src\pages\login\index.jsx",
    "src\pages\settings\index.jsx",
    "src\pages\notfound\index.jsx",
    
    # UI Component files
    "src\components\ui\alert.jsx",
    "src\components\ui\button.jsx",
    "src\components\ui\card.jsx",
    
    # Layout Component files
    "src\components\layout\sidebar.jsx",
    "src\components\layout\header.jsx",
    "src\components\layout\maincontent.jsx",
    "src\components\layout\footer.jsx",
    
    # Chart Component files
    "src\components\charts\barchartcomponent.jsx",
    "src\components\charts\linechartcomponent.jsx",
    "src\components\charts\piechartcomponent.jsx",
    "src\components\charts\radarchartcomponent.jsx",
    
    # Common Component files
    "src\components\common\datacard.jsx",
    "src\components\common\statisticscard.jsx",
    "src\components\common\progressbar.jsx",
    "src\components\common\searchbar.jsx",
    "src\components\common\filterdropdown.jsx",
    "src\components\common\tabpanel.jsx",
    "src\components\common\pagination.jsx",
    "src\components\common\datatable.jsx",
    
    # KOC Component files
    "src\components\koc\koccard.jsx",
    "src\components\koc\koclist.jsx",
    "src\components\koc\kocform.jsx",
    "src\components\koc\kocstats.jsx",
    
    # Insight Component files
    "src\components\insight\trendcard.jsx",
    "src\components\insight\keywordtable.jsx",
    "src\components\insight\sentimentanalysis.jsx",
    
    # Feeds Component files
    "src\components\feeds\campaigncard.jsx",
    "src\components\feeds\channelstats.jsx",
    "src\components\feeds\adperformance.jsx",
    
    # Private Component files
    "src\components\private\landingpagestats.jsx",
    "src\components\private\channelperformance.jsx",
    "src\components\private\trafficsource.jsx",
    
    # Research Component files
    "src\components\research\searchbox.jsx",
    "src\components\research\researchcard.jsx",
    "src\components\research\insightslist.jsx",
    "src\components\research\recommendationcard.jsx",
    
    # Service files
    "src\services\api.js",
    "src\services\auth.js",
    "src\services\overview.js",
    "src\services\insight.js",
    "src\services\kockol.js",
    "src\services\feeds.js",
    "src\services\private.js",
    "src\services\deepresearch.js",
    "src\services\perplexity.js",
    
    # Store files
    "src\store\index.js",
    
    # Reducer files
    "src\store\reducers\authreducer.js",
    "src\store\reducers\overviewreducer.js",
    "src\store\reducers\insightreducer.js",
    "src\store\reducers\kockolreducer.js",
    "src\store\reducers\feedsreducer.js",
    "src\store\reducers\privatereducer.js",
    "src\store\reducers\researchreducer.js",
    
    # Action files
    "src\store\actions\authactions.js",
    "src\store\actions\overviewactions.js",
    "src\store\actions\insightactions.js",
    "src\store\actions\kockolactions.js",
    "src\store\actions\feedsactions.js",
    "src\store\actions\privateactions.js",
    "src\store\actions\researchactions.js",
    
    # Utility files
    "src\utils\formatting.js",
    "src\utils\calculations.js",
    "src\utils\validation.js",
    "src\utils\datetime.js",
    "src\utils\analytics.js",
    
    # Hook files
    "src\hooks\usedatafetching.js",
    "src\hooks\useauthentication.js",
    "src\hooks\usechartdata.js",
    "src\hooks\usefilters.js",
    
    # Constant files
    "src\constants\apiendpoints.js",
    "src\constants\routes.js",
    "src\constants\chartcolors.js",
    "src\constants\statuscodes.js",
    
    # Asset files
    "src\assets\styles\variables.css",
    "src\assets\styles\global.css",
    "src\assets\styles\themes\default.css",
    "src\assets\styles\themes\dark.css",
    
    # Config files
    "config\webpack.config.js",
    "config\.env.example",
    
    # Script files
    "scripts\build.js",
    "scripts\start.js",
    
    # Root files
    "package.json",
    "readme.md",
    ".gitignore",
    ".eslintrc.js",
    ".prettierrc"
)

foreach ($file in $files) {
    $path = "miniso-growth-system\$file"
    if (!(Test-Path -Path $path)) {
        New-Item -ItemType File -Path $path -Force
        Write-Host "Created file: $path"
    }
}

Write-Host "Project structure created successfully!" 