class MP3Importer

 attr_accessor :path

 def initialize(path)
   @path = path
 end

  def file
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  def import
    file.each do|filename|
    Song.new_by_file_name(filename)
  end 
  end

end
