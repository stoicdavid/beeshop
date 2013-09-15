# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

# Inflector#inflections now takes a locale as a parameter (defaults to :en)
ActiveSupport::Inflector.inflections(:es) do |inflect|
  inflect.plural(/$/, 's')
  inflect.plural(/([^ae�iou])$/i, '\1es')
  inflect.plural(/([aeiou]s)$/i, '\1')
  inflect.plural(/z$/i, 'ces')
  inflect.plural(/�([sn])$/i, 'a\1es')
  inflect.plural(/�([sn])$/i, 'e\1es')
  inflect.plural(/�([sn])$/i, 'i\1es')
  inflect.plural(/�([sn])$/i, 'o\1es')
  inflect.plural(/�([sn])$/i, 'u\1es')

  inflect.singular(/s$/, '')
  inflect.singular(/es$/, '')

  inflect.irregular('el', 'los')
end