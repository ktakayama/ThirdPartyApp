#! /usr/bin/env ruby

URL_SCHEMES=%W(comgooglemaps)
INFO_PLIST="ios/Runner/Info.plist"

def main
   data = "<array>\n"
   URL_SCHEMES.each do |url|
      data += <<_EOF_
<dict>
	<key>CFBundleTypeRole</key>
	<string>Editor</string>
	<key>CFBundleURLName</key>
	<string>Third Party App</string>
	<key>CFBundleURLSchemes</key>
	<array>
	<string>#{url}</string>
	</array>
</dict>
_EOF_
   end
   data += "</array>\n"

   system("plutil -replace CFBundleURLTypes -xml \"#{data}\" \"#{INFO_PLIST}\"  -o #{INFO_PLIST}")
end

main
