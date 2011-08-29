Before do
  # local configuration
  @puppetcfg['confdir'] = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
  #@puppetcfg['confdir'] = File.join(File.dirname(__FILE__), '..', '..')
  @puppetcfg['manifest'] = File.join(@puppetcfg['confdir'], 'manifests', 'site.pp')
  # adjust facts like this
  # @facts['architecture'] = "i386"
end
