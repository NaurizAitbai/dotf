c.auto_save.session = True
c.content.autoplay = False
c.content.media_capture = 'ask'
c.content.notifications = False
c.content.pdfjs = True
c.session.lazy_restore = True
c.tabs.background = True

# Change font to Iosevka
c.fonts.default_family = 'iosevka'
c.fonts.web.family.standard = 'iosevka'

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
