//
//  AudioPlayer.swift
//  Restart
//
//  Created by David Goggins on 2023/03/16.
//

import Foundation
import AVFoundation // iOS, Mac OS, Watch OS, and TV OS... any apps using this framework for Audio

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) { //    (File Name, File Extension)
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
                    // Returns the full pathname for the resource.
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            
        } catch {
            print("Could not play the sound file.")
        }
    }
}

/*
 do {
 try 오류 발생 가능 코드
 } catch 오류 패턴 {
 처리 코드
 }
 */
