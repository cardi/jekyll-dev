module Jekyll
  class Scholar
    module Cache

      class << self
        def cache
          @@cache ||= Jekyll::Cache.new("Jekyll::Scholar::Cache")
        end

        def reset
          printf "lol\n"
          Jekyll::Scholar::Cache.cache.clear
        end
      end

    end
  end
end
