// import * as sdk from "microsoft-cognitiveservices-speech-sdk";
import "microsoft-cognitiveservices-speech-sdk/distrib/browser/microsoft.cognitiveservices.speech.sdk.bundle";

export function synthesizeAzureSpeech(text, key, cb) {
    const speechConfig = SpeechSDK.SpeechConfig.fromSubscription(key, "eastasia");
    speechConfig.speechSynthesisLanguage = "zh-CN"; // For example, "de-DE"
    const audioConfig = SpeechSDK.AudioConfig.fromDefaultSpeakerOutput();

    const synthesizer = new SpeechSDK.SpeechSynthesizer(speechConfig, audioConfig);
    synthesizer.speakTextAsync(text,
        result => {
            if (result) {
                synthesizer.close();
                // return result.audioData;
            }

            cb();
        },
        error => {
            console.log(error);
            synthesizer.close();
        });
}
