DATA_SOURCES = [
    {
        "name": "Local Files",
        "source": DataSourceTypes.FILE,
        "data_folder": ${CP_THEME_HOME},
        "cache_age": CACHE_HOURS * 3600
    }
]
CATALOGUE_URI = os.environ.get("CATALOGUE_URI", "http://example.com/cat")