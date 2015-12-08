{-
A little cipher made in Haskell
before my functional programming final exam...
I'm getting a little depressed 
but at least I managed to get this working! 

*** SAMPLE OUTPUT ***
Main> decipher key "kovzhvwlmlguzronv"
"pleasedonotfailme" 

-}		
key = zip ['a','b' .. 'z'] ['z','y' .. 'a']

decipher :: [(Char,Char)] -> [Char] -> [Char]
decipher [] _ = []
decipher key encoded = map applySubstitution encoded
	where
		applySubstitution ch = substituteChar key ch


substituteChar :: [(Char,Char)] -> Char -> Char
substituteChar [] _ = '?'
substituteChar key ch 
	| ch == (fst h) = (snd h)
	| otherwise = substituteChar t ch
	where 
		h = head key 
		t = tail key 
		



