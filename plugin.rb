# name: discourse-ka--locale
# about: Adds a new locale for Uzbek
# version: 0.1
# authors: Terzaghi Riccardo
# url: https://github.com/richterzo/discourse-georgian

register_locale("ka", name: "Georgian", nativeName: "ქართული", fallbackLocale: "en_GB")

after_initialize do
    if defined? DiscourseTranslator::Google::SUPPORTED_LANG_MAPPING
      DiscourseTranslator::Google::SUPPORTED_LANG_MAPPING[:ka] = "ka"
    end
  end