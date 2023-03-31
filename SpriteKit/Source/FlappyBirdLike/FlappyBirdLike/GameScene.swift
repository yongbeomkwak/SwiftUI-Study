//
//  GameScene.swift
//  FlappyBirdLike
//
//  Created by yongbeomkwak on 2023/03/31.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        //초기화 진행
        
        createBird()
        createEnvironment()
        
        
    }
    
    func createBird() {
        let width = self.size.width
        let height = self.size.height
        
        let bird = SKSpriteNode(imageNamed: "bird")
        bird.position = CGPoint(x: width/2, y: 350)
        bird.zPosition = 4
        self.addChild(bird)
    }
    
    func createEnvironment() {
        let width = self.size.width
        let height = self.size.height
        
        let land = SKSpriteNode(imageNamed: "land")
        land.position = CGPoint(x: width/2, y: 50)
        land.zPosition = 3 // 숫자가 클수록 화면 뒤쪽으로 배치
        self.addChild(land)
        
        let sky = SKSpriteNode(imageNamed: "sky")
        sky.position = CGPoint(x: width/2, y: 100)
        sky.zPosition = 1
        self.addChild(sky)
        
        
        
        let ceiling = SKSpriteNode(imageNamed: "ceiling")
        ceiling.position = CGPoint(x: width/2, y: height)
        ceiling.zPosition = 3
        self.addChild(ceiling)
        
        let pipeUp = SKSpriteNode(imageNamed: "pipe")
        pipeUp.position = CGPoint(x: width/2, y: 0)
        pipeUp.zPosition = 2
        self.addChild(pipeUp)
        
        let pipeDown = SKSpriteNode(imageNamed: "pipe")
        pipeDown.position = CGPoint(x: width/2, y: height + 100 )
        pipeDown.zPosition = 2
        pipeDown.xScale = -1 // x방향으로 180도 회전 (좌우 반전)
        pipeDown.zRotation = .pi // 상하 반전
        
        self.addChild(pipeDown)
    }

}