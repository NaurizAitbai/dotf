config.load_autoconfig()

# core
c.auto_save.session = True
c.confirm_quit = ['downloads']
c.content.autoplay = False
c.content.fullscreen.window = True
c.content.javascript.modal_dialog = True
c.content.pdfjs = False
c.downloads.location.suggestion = 'path'
c.downloads.position = 'bottom'
c.editor.command = ["st",  "-e",  "nvim", "-f", "{file}", "-c", "normal {line}G{column0}l"]
c.fonts.default_family = 'iosevka'
c.fonts.web.family.standard = 'iosevka'
c.input.insert_mode.auto_load = True
c.qt.process_model = 'process-per-site-instance'
c.scrolling.bar = 'always'
c.scrolling.smooth = True
c.search.ignore_case = 'always'
c.session.lazy_restore = True
c.tabs.background = True
c.tabs.mode_on_change = 'restore'
c.tabs.show = 'multiple'


# adblock
c.content.blocking.enabled = True
c.content.blocking.method = 'adblock'
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://easylist-downloads.adblockplus.org/ruadlist%2Beasylist.txt"
]


# fileselect
c.fileselect.handler = 'external'
c.fileselect.multiple_files.command = ['st', '-e', 'nnn', '-p', '{}']
c.fileselect.single_file.command = ['st', '-e', 'nnn', '-p', '{}']


# headers
c.content.headers.user_agent = 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0'
c.content.headers.referer = 'same-domain'
c.content.headers.accept_language = 'en-US,en;q=0.5'
c.content.headers.custom = {"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}


# privacy
c.content.canvas_reading = False
c.content.webgl = False
c.content.cookies.accept = 'no-3rdparty'
c.content.webrtc_ip_handling_policy = 'default-public-interface-only'


# history
c.completion.cmd_history_max_items = 0
c.completion.web_history.max_items = 0


# permissions
c.content.desktop_capture = False
c.content.geolocation = False
c.content.media.audio_capture = False
c.content.media.video_capture = False
c.content.media.audio_video_capture = False
c.content.mouse_lock = False
c.content.notifications = False
c.content.persistent_storage = False
c.content.register_protocol_handler = False


# searchengines
c.url.searchengines = {
        'DEFAULT': 'https://searx.org?q={}&categories=general&language=en-US',
        's': 'https://searx.org?q={}&categories=general&language=en-US'
}
