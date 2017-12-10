function Audio = Play_audio(filename)
    %A function that plays the audio in the filename.
    [y,fs]=audioread(filename);%Matlab_user_input_required.mp3
    soundsc(y,fs)
end