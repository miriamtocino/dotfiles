IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Springest extensions
def c(domain)
  C18n.domain = domain
end

def fr(object)
  if object =~ /http/
    # Split http://www.springest.nl.dev:3000/arbo-veiligheid into:
    # ["http:", "", "www.springest.nl.dev:3000", "arbo-veiligheid"]
    # This works with any amount of nesting, so also training and subject pages
    object = object.split("/")[3..-1].join("/")
    path = "/#{object}"
    find_object(path)
  else
    find_object(object)
  end
end

def find_object(path)
  training = Training.find_route(path)
  return training if training

  subject = Subject.find_route(path)
  return subject if subject

  category = Category.find_route(path)
  return category if category
end
