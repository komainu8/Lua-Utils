# -*- ruby -*-

/^lua-utils\.VERSION = "(.+?)"/ =~ File.read("lua-utils.lua")
version = $1

desc "Tag for #{version}"
task :tag do
  sh("git", "tag", "-a", version, "-m", "#{version} has been released!!!")
  sh("git", "push", "--tags")
end

desc "Upload package to luarocks.org"
task :upload do
  api_key = ENV["API_KEY"]
  if api_key.nil?
    raise "Specify API key as API_KEY environment variable value"
  end

  rockspec_version = ""
  File.open("lua-utils.rockspec") do |rockspec|
    rockspec.each_line do |line|
      case line
      when /package_version = "(.+?)"/
        rockspec_version << $1
      when /version = package_version \.\. "(.+?)"/
        rockspec_version << $1
      end
    end
  end
  versioned_rockspec_filename = "lua-utils-#{rockspec_version}.rockspec"

  begin
    cp("lua-utils.rockspec", versioned_rockspec_filename)
    sh("luarocks",
       "upload",
       "--api-key=#{api_key}",
       versioned_rockspec_filename)
  ensure
    rm_f(versioned_rockspec_filename)
  end
end

namespace :version do
  desc "Update version"
  task :update do
    new_version = ENV["VERSION"]
    if new_version.nil?
      raise "Specify new version as VERSION environment variable value"
    end

    lua_utils_content = File.read("lua-utils.lua").gsub(/lua-utils\.VERSION = ".+?"/) do
      "lua-utils.VERSION = \"#{new_version}\""
    end
    File.open("lua-utils.lua", "w") do |lua_utils|
      lua_utils.print(lua_utils_content)
    end

    rockspec_content = File.read("lua-utils.rockspec").gsub(/package_version = ".+?"/) do
      "package_version = \"#{new_version}\""
    end
    File.open("lua-utils.rockspec", "w") do |rockspec|
      rockspec.print(rockspec_content)
    end
  end
end
