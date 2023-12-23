//
//  AudioManagerViewModel.swift
//  BasicUIKitDemo
//
//  Created by NB1003517 on 23/12/2566 BE.
//

import Foundation
import AVKit

class AudioManagerViewModel {
    
    private var chantAudioPlay: AVAudioPlayer?
    
    func playback(_ team: Team) {
        if team.isPlaying {
            chantAudioPlay?.stop()
        } else {
            guard let path = Bundle.main.path(forResource: "\(team.id.chantFile).mp3", ofType: nil) else { return }
            let url = URL(fileURLWithPath: path)
            do {
                chantAudioPlay = try AVAudioPlayer(contentsOf: url)
                chantAudioPlay?.numberOfLoops = -1
                chantAudioPlay?.play()
            } catch {
                print(error)
            }
        }
    }
}
