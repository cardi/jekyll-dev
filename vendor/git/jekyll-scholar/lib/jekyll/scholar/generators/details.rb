module Jekyll
  class Scholar

    class Details < Page
      include Scholar::Utilities

      def initialize(site, base, dir, entry)
        @site, @base, @dir = site, base, dir
        @config = Scholar.defaults.merge(site.config['scholar'] || {})

        @name = entry.key.to_s.gsub(/[:\s]+/, '_')
        @name << '.html'

        process(@name)
        read_yaml(File.join(base, '_layouts'), config['details_layout'])

        data.merge!(reference_data(entry))
        data['title'] = data['entry']['title'] if data['entry'].has_key?('title')
      end

    end

    class DetailsGenerator < Generator
      include Scholar::Cache
      include Scholar::Utilities

      #safe true
      #priority :high

      attr_reader :config

      def generate(site)
        @site, @config = site, Scholar.defaults.merge(site.config['scholar'] || {})
        @regenerator = @site.regenerator

        if generate_details?
          entries.each do |entry|
            details = Details.new(site, site.source, File.join('', details_path), entry)

            #printf "[%s] do we need to regenerate? %s\n", details.path, @regenerator.regenerate?(details.path)
            #printf "[%s] do we need to regenerate in_source_dir? %s\n", details.path, @regenerator.regenerate?(site.in_source_dir(details.path))
            #printf "[%s] do we need to regenerate in_dest_dir? %s\n", details.path, @regenerator.regenerate?(site.in_dest_dir(details.path))

            #printf "dest %s\n", site.in_dest_dir(details.path)
            #printf "%s\n", site.in_source_dir(details.path)

            #lol = @regenerator.regenerate?(site.in_source_dir(details.path))
            #if lol

            #@cache ||= Jekyll::Cache.new('Scholar::DetailsGenerator')


            #printf "[][][] %s\n", site.in_source_dir(".lol", "lol")
            #Jekyll::Cache.cache_dir = site.in_source_dir(".lol", "lol")
            cache = Jekyll::Cache.new "Jekyll::Scholar::DetailsGenerator"

            if cache.key?("1234") != true
              printf "[Cache:1234] 1234 doesn't exist\n"
              cache["1234"] = "12345"
            else
              printf "[Cache:1234] it exists! and the value is %s\n", cache["1234"]
            end

            cache.getset("12345") do
              printf "hello"
              puts 5
            end

            #  printf "details.path = %s\n", details.path
            #  printf "key in path? %s\n", Scholar::Cache.cache.key?(details.path)
            #  #printf "key in path? %s\n", cache.key?(details.path)
            #  #if cache.key?(details.path)
            #  #  printf "%s\n", cache[details.path]
            #  #end

            #  printf "'abc' key in path? %s\n", Scholar::Cache.cache.key?("abc")
            #  printf "'hello' key in path? %s\n", Scholar::Cache.cache.key?("hello")
            #  Scholar::Cache.cache.getset("hello") do
            #    printf "'hello': testing getset\n"
            #    Scholar::Cache.cache["abc"] = 100
            #  end

            #  printf "disk cache enabled? %s\n", Scholar::Cache.cache.disk_cache_enabled?

            #  Scholar::Cache.cache["abc"] = 100

            if cache.key?(details.path) != true
              #cache[details.path] = "this is done!"
              #printf "[%s] added key to cache\n", details.path
              printf "[%s] no key in cache\n", details.path
            else
              printf "[%s] found the key\n", details.path
              printf "[%s] value is: %s\n", details.path, cache[details.path]
            end

            cache.getset(details.path) do
            #if 1
              details.render(site.layouts, site.site_payload)
              details.write(site.dest)

              site.pages << details

              #print site.pages
              #print site.in_source_dir(details.path)

              # https://github.com/jekyll/jekyll/issues/6418
              # https://github.com/jekyll/jekyll/issues/6722
              #  -- can't add, because no file exists!

              # this never works properly because it's not rendered yet.
              #@regenerator.add(site.in_source_dir(details.path))

              # ???
              #printf "file exist in dest dir? %s\n", File.exist?(site.in_dest_dir(details.path))
              #@regenerator.add(site.in_dest_dir(details.path))
              # this doesn't work either, because the new page gets
              # generated immediately _after_, and thus resets the cache
              # time

              #@regenerator.add(details.path)

              #printf "file exist in source dir? %s\n", File.exist?(site.in_source_dir(details.path))

              #@regenerator.add_dependency(
              #  site.in_source_dir(details.path),
              #  bibtex_path
              #)
              #@regenerator.add_dependency(
              #  site.in_dest_dir(details.path),
              #  bibtex_path
              #)
              #printf "%s\n", @regenerator.metadata_file

              #@regenerator.write_metadata
              true
            end

            #Jekyll::Cache.cache_dir = site.in_source_dir(".jekyll-cache", "Jekyll/Cache")
          end

        end
      end

    end


  end
end
