
def name_alias(fullname)
  fullname.chars
  fullname.split(' ')
  fullname[0], fullname[1] = fullname[1], fullname[0]
  end

  p name_alias("Sarah Schaab")