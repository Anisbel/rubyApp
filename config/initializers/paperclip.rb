                                                                                                                                                     class Paperclip::CommandLine
   def full_path(binary)
     [self.class.path, binary].compact.join(File::ALT_SEPARATOR||File::SEPARATOR)
   end
 end


[
  Cocaine::CommandLine::BackticksRunner,
  Cocaine::CommandLine::PopenRunner,
  Cocaine::CommandLine::PosixRunner,
  Cocaine::CommandLine::ProcessRunner,
].each do |klass|
  klass.class_eval do
    def with_modified_environment(env, &block)
      yield
    end
  end
end
