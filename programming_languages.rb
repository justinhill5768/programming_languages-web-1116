languages ={
  :oo => {
    :ruby => {
      :type => "interpreted"
  },
  :javascript => {
    :type => "interpreted"
  },
  :python => {
    :type => "interpreted"
  },
  :java => {
    :type => "compiled"
  }
},
:functional => {
  :clojure => {
    :type => "compiled"
  },
  :erlang => {
    :type => "compiled"
  },
  :scala => {
    :type => "compiled"
  },
  :javascript => {
    :type => "interpreted"
  }

  }
}
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,language|
    language.each do |language2,type|
      type.each do |type2,value|
        new_hash[language2] = {type2 => value, :style => [style]}
      end
    end
  end
  new_hash[:javascript][:style] << :oo
  return new_hash      
end
