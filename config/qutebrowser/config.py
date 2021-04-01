# List of URLs to ABP-style adblocking rulesets.
c.content.blocking.adblock.lists = ["https://easylist.to/easylist/easylist.txt", "https://easylist.to/easylist/easyprivacy.txt", "https://easylist-downloads.adblockplus.org/ruadlist%2Beasylist.txt"]

# Enable the ad/host blocker
c.content.blocking.enabled = True

# Which method of blocking ads should be used.
c.content.blocking.method = 'adblock'

# User agent to send.
c.content.headers.user_agent = 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0'

# Allow websites to read canvas elements.
c.content.canvas_reading = False

# When to send the Referer header.
c.content.headers.referer = 'same-domain'

# Use the standard JavaScript model dialog for 'alert()' and 'config()'.
c.content.javascript.modal_dialog = True

# Enable WebGL.
c.content.webgl = False

# Value to send in the 'Accept-Language' header.
c.content.headers.accept_language = 'en-US,en;q=0.5'

# Custom headers for qutebrowser HTTP requests.
c.content.headers.custom = {"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}

# Always restore open sites when qutebrowser is reopened.
c.auto_save.session = True

# Number of commands to save in the command history. 0: no history / -1: unlimited
c.completion.cmd_history_max_items = 0

# Number of URLs to show in the web history. 0: no history / -1: unlimited
c.completion.web_history.max_items = 0

# Require a confirmation before quitting the application.
c.confirm_quit = ['downloads']

# Automatically start playing <video> elements.
c.content.autoplay = False

# Which cookies to accept.
c.content.cookies.accept = 'no-3rdparty'

# Allow websites to share screen content.
c.content.desktop_capture = False

# Allow websites to request geolocations.
c.content.geolocation = False

# Allow websites to record audio.
c.content.media.audio_capture = False

# Allow websites to record video
c.content.media.video_capture = False

# Allow websites to record audio and video
c.content.media.audio_video_capture = False

# Allow websites to lock your mouse pointer.
c.content.mouse_lock = False

# Allow websites to show notifications.
c.content.notifications = False

# Limit fullscreen to the browser window (does not expand to fill the screen).
c.content.fullscreen.window = True

# Allow pdf.js to view PDF files in the browser.
c.content.pdfjs = False

# Allow websites to request persistent storage quota via navigator.webkitPersistentStorage.requestQuota.
c.content.persistent_storage = False

# Allow websites to register protocol handlers via navigator.registerProtocolHandler.
c.content.register_protocol_handler = False

# Which interfaces to expose via WebRTC.
c.content.webrtc_ip_handling_policy = 'default-public-interface-only'

# What to display in the download filename input.
c.downloads.location.suggestion = 'path'

# Where to show the downloaded files.
c.downloads.position = 'bottom'

# Editor (and arguments) to use for the 'edit-*' commands.
c.editor.command = ["st",  "-e",  "nvim", "-f", "{file}", "-c", "normal {line}G{column0}l"]

# Default font familities to use.
c.fonts.default_family = 'iosevka'
c.fonts.web.family.standard = 'iosevka'

# Automatically enter insert mode if an editable element is focused after loading the page.
c.input.insert_mode.auto_load = True

# Which Chromium process model to use.
c.qt.process_model = 'process-per-site-instance'

# When/how to show the scrollbar.
c.scrolling.bar = 'always'

# Enable smooth scrolling for web pages.
c.scrolling.smooth = True

# When to find text on a page case-insensitively.
c.search.ignore_case = 'always'

# Load a restored tab as soon as it takes focus.
c.session.lazy_restore = True

# Open new tabs in the background.
c.tabs.background = True

# When switching tabs, what input mode is applied.
c.tabs.mode_on_change = 'restore'

# When to show the tab bar.
c.tabs.show = 'multiple'

config.set(
        'hints.selectors',
        {'scrollable': ['#container']},
        pattern='*://*.youtube.com/*',
        )
config.set(
        'hints.selectors',
        {'all': [*c.hints.selectors['all'], '.tn-data-list']},
        pattern='*://*.tengrinews.kz/*',
        )

# 2ch.hk
with config.pattern('*://*.2ch.hk/*') as p:
    p.hints.selectors['all'] = [*p.hints.selectors['all'], '#plashque-close', '.spoiler', '.expand-large-comment']
    p.hints.selectors['scrollable'] = ['.cntnt__left_sticky']

config.load_autoconfig()
