c.auto_save.session = True
c.content.autoplay = False
c.content.media_capture = 'ask'
c.content.notifications = False
c.content.pdfjs = True
c.session.lazy_restore = True
c.tabs.background = True

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
