Before do
  # local configuration
  @puppetcfg['confdir'] = File.join(File.dirname(__FILE__), '..', '..')
  @puppetcfg['manifest'] = File.join(@puppetcfg['confdir'], 'manifests', 'site.pp')
  @puppetcfg['modulepath']  = File.join(@puppetcfg['confdir'], 'modules')
  # adjust facts like this
  # @facts['architecture'] = "i386"
end
