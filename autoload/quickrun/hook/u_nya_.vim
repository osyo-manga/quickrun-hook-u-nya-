scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim


let s:hook = {
\	"name" : "u_nya_",
\	"kind" : "hook",
\	"index_counter" : 0,
\	"config" : {
\		"enable" : 0
\}
\}

function! s:hook.on_ready(session, context)
	let self.index_counter = -2
endfunction

function! s:hook.on_output(session, context)
	let self.index_counter += 1
	if self.index_counter < 0
		return
	endif
	let aa_list = [
\		"（」・ω・）」うー！",
\		"（／・ω・）／にゃー！"
\	]
	echo aa_list[ self.index_counter / 12 % len(aa_list)  ]
endfunction

function! s:hook.on_exit(...)
	echo "Let's＼(・ω・)／にゃー！"
endfunction


function! quickrun#hook#u_nya_#new()
	return deepcopy(s:hook)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
