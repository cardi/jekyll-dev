# -*- encoding: utf-8 -*-
# stub: jekyll 4.0.0.pre.alpha1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll".freeze
  s.version = "4.0.0.pre.alpha1"

  s.required_rubygems_version = Gem::Requirement.new(">= 2.7.0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/jekyll/jekyll/issues", "changelog_uri" => "https://github.com/jekyll/jekyll/releases", "homepage_uri" => "https://jekyllrb.com", "source_code_uri" => "https://github.com/jekyll/jekyll" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tom Preston-Werner".freeze, "Parker Moore".freeze, "Matt Rogers".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-06-06"
  s.description = "Jekyll is a simple, blog aware, static site generator.".freeze
  s.email = ["maintainers@jekyllrb.com".freeze]
  s.executables = ["jekyll".freeze]
  s.extra_rdoc_files = ["README.markdown".freeze, "LICENSE".freeze]
  s.files = [".rubocop.yml".freeze, "LICENSE".freeze, "README.markdown".freeze, "exe/jekyll".freeze, "lib/blank_template/_config.yml".freeze, "lib/blank_template/_layouts/default.html".freeze, "lib/blank_template/_sass/main.scss".freeze, "lib/blank_template/assets/css/main.scss".freeze, "lib/blank_template/index.md".freeze, "lib/jekyll.rb".freeze, "lib/jekyll/cache.rb".freeze, "lib/jekyll/cleaner.rb".freeze, "lib/jekyll/collection.rb".freeze, "lib/jekyll/command.rb".freeze, "lib/jekyll/commands/build.rb".freeze, "lib/jekyll/commands/clean.rb".freeze, "lib/jekyll/commands/doctor.rb".freeze, "lib/jekyll/commands/help.rb".freeze, "lib/jekyll/commands/new.rb".freeze, "lib/jekyll/commands/new_theme.rb".freeze, "lib/jekyll/commands/serve.rb".freeze, "lib/jekyll/commands/serve/live_reload_reactor.rb".freeze, "lib/jekyll/commands/serve/livereload_assets/livereload.js".freeze, "lib/jekyll/commands/serve/servlet.rb".freeze, "lib/jekyll/commands/serve/websockets.rb".freeze, "lib/jekyll/configuration.rb".freeze, "lib/jekyll/converter.rb".freeze, "lib/jekyll/converters/identity.rb".freeze, "lib/jekyll/converters/markdown.rb".freeze, "lib/jekyll/converters/markdown/kramdown_parser.rb".freeze, "lib/jekyll/converters/smartypants.rb".freeze, "lib/jekyll/convertible.rb".freeze, "lib/jekyll/deprecator.rb".freeze, "lib/jekyll/document.rb".freeze, "lib/jekyll/drops/collection_drop.rb".freeze, "lib/jekyll/drops/document_drop.rb".freeze, "lib/jekyll/drops/drop.rb".freeze, "lib/jekyll/drops/excerpt_drop.rb".freeze, "lib/jekyll/drops/jekyll_drop.rb".freeze, "lib/jekyll/drops/site_drop.rb".freeze, "lib/jekyll/drops/static_file_drop.rb".freeze, "lib/jekyll/drops/unified_payload_drop.rb".freeze, "lib/jekyll/drops/url_drop.rb".freeze, "lib/jekyll/entry_filter.rb".freeze, "lib/jekyll/errors.rb".freeze, "lib/jekyll/excerpt.rb".freeze, "lib/jekyll/external.rb".freeze, "lib/jekyll/filters.rb".freeze, "lib/jekyll/filters/date_filters.rb".freeze, "lib/jekyll/filters/grouping_filters.rb".freeze, "lib/jekyll/filters/url_filters.rb".freeze, "lib/jekyll/frontmatter_defaults.rb".freeze, "lib/jekyll/generator.rb".freeze, "lib/jekyll/hooks.rb".freeze, "lib/jekyll/layout.rb".freeze, "lib/jekyll/liquid_extensions.rb".freeze, "lib/jekyll/liquid_renderer.rb".freeze, "lib/jekyll/liquid_renderer/file.rb".freeze, "lib/jekyll/liquid_renderer/table.rb".freeze, "lib/jekyll/log_adapter.rb".freeze, "lib/jekyll/mime.types".freeze, "lib/jekyll/page.rb".freeze, "lib/jekyll/page_without_a_file.rb".freeze, "lib/jekyll/plugin.rb".freeze, "lib/jekyll/plugin_manager.rb".freeze, "lib/jekyll/publisher.rb".freeze, "lib/jekyll/reader.rb".freeze, "lib/jekyll/readers/collection_reader.rb".freeze, "lib/jekyll/readers/data_reader.rb".freeze, "lib/jekyll/readers/layout_reader.rb".freeze, "lib/jekyll/readers/page_reader.rb".freeze, "lib/jekyll/readers/post_reader.rb".freeze, "lib/jekyll/readers/static_file_reader.rb".freeze, "lib/jekyll/readers/theme_assets_reader.rb".freeze, "lib/jekyll/regenerator.rb".freeze, "lib/jekyll/related_posts.rb".freeze, "lib/jekyll/renderer.rb".freeze, "lib/jekyll/site.rb".freeze, "lib/jekyll/static_file.rb".freeze, "lib/jekyll/stevenson.rb".freeze, "lib/jekyll/tags/highlight.rb".freeze, "lib/jekyll/tags/include.rb".freeze, "lib/jekyll/tags/link.rb".freeze, "lib/jekyll/tags/post_url.rb".freeze, "lib/jekyll/theme.rb".freeze, "lib/jekyll/theme_builder.rb".freeze, "lib/jekyll/url.rb".freeze, "lib/jekyll/utils.rb".freeze, "lib/jekyll/utils/ansi.rb".freeze, "lib/jekyll/utils/exec.rb".freeze, "lib/jekyll/utils/internet.rb".freeze, "lib/jekyll/utils/platforms.rb".freeze, "lib/jekyll/utils/thread_event.rb".freeze, "lib/jekyll/utils/win_tz.rb".freeze, "lib/jekyll/version.rb".freeze, "lib/site_template/.gitignore".freeze, "lib/site_template/404.html".freeze, "lib/site_template/_config.yml".freeze, "lib/site_template/_posts/0000-00-00-welcome-to-jekyll.markdown.erb".freeze, "lib/site_template/about.markdown".freeze, "lib/site_template/index.markdown".freeze, "lib/theme_template/CODE_OF_CONDUCT.md.erb".freeze, "lib/theme_template/Gemfile".freeze, "lib/theme_template/LICENSE.txt.erb".freeze, "lib/theme_template/README.md.erb".freeze, "lib/theme_template/_layouts/default.html".freeze, "lib/theme_template/_layouts/page.html".freeze, "lib/theme_template/_layouts/post.html".freeze, "lib/theme_template/example/_config.yml.erb".freeze, "lib/theme_template/example/_post.md".freeze, "lib/theme_template/example/index.html".freeze, "lib/theme_template/example/style.scss".freeze, "lib/theme_template/gitignore.erb".freeze, "lib/theme_template/theme.gemspec.erb".freeze, "rubocop/jekyll.rb".freeze, "rubocop/jekyll/assert_equal_literal_actual.rb".freeze, "rubocop/jekyll/no_p_allowed.rb".freeze, "rubocop/jekyll/no_puts_allowed.rb".freeze]
  s.homepage = "https://jekyllrb.com".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "----------------------------------------------------------------------------------\nThis version of Jekyll comes with some major changes.\n\nMost notably:\n  * Our `link` tag now comes with the `relative_url` filter incorporated into it.\n    You should no longer prepend `{{ site.baseurl }}` to `{% link foo.md %}`\n    For further details: https://github.com/jekyll/jekyll/pull/6727\n\n  * Our `post_url` tag now comes with the `relative_url` filter incorporated into it.\n    You shouldn't prepend `{{ site.baseurl }}` to `{% post_url 2019-03-27-hello %}`\n    For further details: https://github.com/jekyll/jekyll/pull/7589\n----------------------------------------------------------------------------------\n".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A simple, blog aware, static site generator.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.4"])
      s.add_runtime_dependency(%q<colorator>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<em-websocket>.freeze, ["~> 0.5"])
      s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.9.5", "< 2"])
      s.add_runtime_dependency(%q<jekyll-sass-converter>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<jekyll-watch>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<kramdown>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<kramdown-parser-gfm>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<liquid>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<mercenary>.freeze, ["~> 0.3.3"])
      s.add_runtime_dependency(%q<pathutil>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<rouge>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<safe_yaml>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<addressable>.freeze, ["~> 2.4"])
      s.add_dependency(%q<colorator>.freeze, ["~> 1.0"])
      s.add_dependency(%q<em-websocket>.freeze, ["~> 0.5"])
      s.add_dependency(%q<i18n>.freeze, [">= 0.9.5", "< 2"])
      s.add_dependency(%q<jekyll-sass-converter>.freeze, ["~> 1.0"])
      s.add_dependency(%q<jekyll-watch>.freeze, ["~> 2.0"])
      s.add_dependency(%q<kramdown>.freeze, ["~> 2.1"])
      s.add_dependency(%q<kramdown-parser-gfm>.freeze, ["~> 1.0"])
      s.add_dependency(%q<liquid>.freeze, ["~> 4.0"])
      s.add_dependency(%q<mercenary>.freeze, ["~> 0.3.3"])
      s.add_dependency(%q<pathutil>.freeze, ["~> 0.9"])
      s.add_dependency(%q<rouge>.freeze, ["~> 3.0"])
      s.add_dependency(%q<safe_yaml>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<addressable>.freeze, ["~> 2.4"])
    s.add_dependency(%q<colorator>.freeze, ["~> 1.0"])
    s.add_dependency(%q<em-websocket>.freeze, ["~> 0.5"])
    s.add_dependency(%q<i18n>.freeze, [">= 0.9.5", "< 2"])
    s.add_dependency(%q<jekyll-sass-converter>.freeze, ["~> 1.0"])
    s.add_dependency(%q<jekyll-watch>.freeze, ["~> 2.0"])
    s.add_dependency(%q<kramdown>.freeze, ["~> 2.1"])
    s.add_dependency(%q<kramdown-parser-gfm>.freeze, ["~> 1.0"])
    s.add_dependency(%q<liquid>.freeze, ["~> 4.0"])
    s.add_dependency(%q<mercenary>.freeze, ["~> 0.3.3"])
    s.add_dependency(%q<pathutil>.freeze, ["~> 0.9"])
    s.add_dependency(%q<rouge>.freeze, ["~> 3.0"])
    s.add_dependency(%q<safe_yaml>.freeze, ["~> 1.0"])
  end
end
