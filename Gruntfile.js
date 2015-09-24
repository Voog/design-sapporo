module.exports = function(grunt) {
  "use strict";

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    modernizr_builder: {
      build: {
        options: {
          features: [
            'flexbox',
            'svg'
          ],
          dest: 'javascripts/modernizr-custom.min.js',
          uglify: true
        }
      }
    },

    // Compiles the stylesheet files.
    sass: {
      build: {
        options: {
          style: 'expanded',
          sourcemap: 'none'
        },
        files: [{
          expand: true,
          cwd: 'sources/stylesheets',
          src: 'main.scss',
          dest: 'stylesheets/',
          ext: '.css'
        }]
      }
    },

    // Minifies the stylesheet files.
    cssmin: {
      build: {
        expand: true,
        cwd: 'stylesheets/',
        src: [
          'main.css'
        ],
        dest: 'stylesheets/',
        ext: '.min.css'
      }
    },

    // Executes the Voog Kit toolkit manifest generation and file upload commands.
    exec: {
      kitmanifest: {
        cmd: function(file) {
          return 'kit manifest';
        }
      },

      kit: {
        cmd: function(file) {
          if (grunt.option('site')) {
            return 'kit push -s ' + grunt.option('site') + ' ' + file;
          } else {
            return 'kit push ' + file;
          }
        }
      }
    },

    // Watches the project for changes and recompiles the output files.
    watch: {
      css: {
        files: [
          'sources/stylesheets/*.scss',
          'sources/stylesheets/*/*.scss'
        ],
        tasks: ['sass:build', 'cssmin:build', 'exec:kit:stylesheets/*.css']
      },

      voog: {
        files: ['layouts/*.tpl', 'components/*.tpl'],
        options: {
          spawn: false
        }
      }
    },
  });

  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-exec');
  grunt.loadNpmTasks('grunt-modernizr-builder');

  grunt.registerTask('default', ['modernizr_builder:build', 'sass', 'cssmin']);

  grunt.event.on('watch', function(action, filepath, target) {
    if (target == 'voog') {
      if (action == 'added' || action == 'deleted') {
        grunt.task.run(['exec:kitmanifest']);
      }
      if (grunt.file.exists('.voog')) {
        if (action != 'deleted') {
          grunt.task.run(['exec:kit:' + filepath]);
        }
      }
    }
  });
};
