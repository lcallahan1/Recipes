require 'word-to-markdown'

Dir.glob("*.docx").each do  |file|
  name = File.basename(file, ".docx")
  f = WordToMarkdown.new(file)
  File.open("#{name}.md", 'w') do |file|
    file.write(f.to_s)
  end
end
