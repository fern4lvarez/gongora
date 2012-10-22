# coding: utf-8
class Gongora
  def self.hi
    puts "Hi, I\'m Góngora and I\'ll help you to write easily beatiful words"
  end

  def self.write_words(words, file, dir="")
    if dir.empty? 
      puts "I\'ll write in this directory... "
    elsif self.exists_dir? dir 
      puts "Directory already existed..."
    else
      puts "Creating new directory #{dir}... "
      Dir.mkdir(dir, 0755)
    end
    self.write_file words, file, dir
  end

  def self.read_words(path)
    self.exists_file? path ? File.read("bar/foo") : puts "Sorry, I can't read something that does not exist."
  end

  protected
  def self.exists_dir?(dir)
    File.directory? dir
  end

  def self.exists_file?(path)
    File.exists? path    
  end

  def self.write_file(words, file, dir)
    dir.empty? ? path = "#{file}" : path = "#{dir}/#{file}"
    puts "Creating #{file} and writting some beautiful words..."
    File.open(path, "a") { |f| f.write(words) }
  end
end
