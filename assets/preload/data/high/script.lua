function onCreatePost()
	dadnorm = getCharacterY('dad') + 250
	bfnorm = getCharacterY('boyfriend') + 350
	dady = getCharacterY('dad') + 0
	bfy = getCharacterY('boyfriend') + 0
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if curBeat >= 224 then
		if curBeat <= 352 then
			dady = dady - 10
			doTweenY('funny fly', 'dad', dady, 0.25, linear)
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if curBeat >= 250 then
		if curBeat <= 352 then
			bfy = bfy - 10
			doTweenY('funny fly2', 'boyfriend', bfy, 0.25, linear)
		end
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if curBeat >= 224 then
		if curBeat <= 352 then
			bfynow = bfy
			if bfynow < bfnorm then
				bfl = bfynow + 10
				doTweenY('funny fall', 'boyfriend', bfl, 0.25, linear)
			else
				doTweenY('funny non', 'boyfriend', bfnorm, 0.25, linear)
			end
		end
	end
end

function noteMissPress(direction)
	if curBeat >= 224 then
		if curBeat <= 352 then
			bfynow = bfy
			if bfynow < bfnorm then
				bfl = bfynow + 10
				doTweenY('funny fall2', 'boyfriend', bfl, 0.25, linear)
			else
				doTweenY('funny non2', 'boyfriend', bfnorm, 0.25, linear)
			end
		end
	end
end

function onBeatHit()
	if curBeat == 352 then
		doTweenY('return', 'boyfriend', bfnorm, 10, linear)
		doTweenY('returndad', 'dad', dadnorm, 10, linear)
	end
end