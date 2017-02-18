
function Encode_URL()
    " must encode % first
    silent %s/%/%25/eg

    silent %s/"/%22/eg
    silent %s/\n/%0A/eg
    silent %s/\r/%0D/eg
    silent %s/+/%2B/eg
    silent %s/\~/%7E/eg
endfunction
command Encodeurl :call Encode_URL()

function Decode_URL()
    silent %s/%20/ /eg
    silent %s/%22/"/eg
    silent %s/%0A/\r/eg
    silent %s/%0D/\r/eg
    silent %s/%09/\t/eg
    silent %s/%2B/+/eg
    silent %s/%2C/\,/eg
    silent %s/%3A/\:/eg
    silent %s/%40/\@/eg
    silent %s/%7B/\{/eg
    silent %s/%7C/\|/eg
    silent %s/%7D/\}/eg
    silent %s/%7E/\~/eg

    " must decode % last
    silent %s/%25/%/eg
endfunction
command Decodeurl :call Decode_URL()

