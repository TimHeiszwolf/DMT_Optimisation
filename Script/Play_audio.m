function Play_audio = func(filename)
    %A function that plays the audio in the filename.
    [y,fs]=audioread(filename);%Matlab_user_input required.mp3
    soundsc(y,fs)
end