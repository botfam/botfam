local function run(msg, matches)
  local htp = http.request('http://api.vajehyab.com/v2/public/?q='..URL.escape(matches[1]))
  local data = json:decode(htp)
	return 'کلمه : '..(data.data.title or data.search.q)..'\n\nمعنی : '..(data.data.text or '----' )..'\n\n'
end
return {
  patterns = {
    "^[!#/][Mm][Ee][Aa][Nn] (.*)$",
    "^معنی (.*)$"
  },
  run = run
}
