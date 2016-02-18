class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super

    setContentView(resources.getIdentifier('main', 'layout', 'com.lazztech.thoughtlogruby'))
  end
end
