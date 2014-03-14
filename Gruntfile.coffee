module.exports = (grunt) ->
  grunt.initConfig {
    pkg: grunt.file.readJSON('package.json')
    uncss:
      dist:
        files:
          'source/assets/stylesheets/application-light.css': ['build/**/*.html']
    dom_munger:
      main:
        options:
          update:
            selector: 'link'
            attribute:'href'
            value:'assets/stylesheets/application-light.css'
        src: 'build/*.html'
  }
  grunt.loadNpmTasks 'grunt-uncss'
  grunt.loadNpmTasks 'grunt-dom-munger'

  grunt.registerTask 'css_replace', ->
    grunt.file.delete 'build/assets/stylesheets/'
    grunt.file.copy 'source/assets/stylesheets/application-light.css',
      'build/assets/stylesheets/application-light.css'
    grunt.file.delete 'source/assets/stylesheets/application-light.css'

  grunt.registerTask 'css_clean', ['uncss', 'dom_munger', 'css_replace']
