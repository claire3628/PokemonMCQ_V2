//
//  PokemonViewController.swift
//  PokemonMCQ
//
//  Created by Claire Chang on 2025/4/6.
//

import UIKit

class PokemonViewController: UIViewController {

    var defaultQA:Questions = Questions(question: "寶可夢知識大挑戰 V2", option: Array(repeating: "?????", count: 3), answer: 1)
    
    var listQA:[Questions] = [
        
        Questions(question: "小火龍的最終進化型是什麼？", option: ["火恐龍", "噴火龍", "火焰鳥"], answer: 1),
        Questions(question: "皮卡丘是第幾代的寶可夢？", option: ["第二代", "第一代", "第三代"], answer: 1),
        Questions(question: "以下哪一個寶可夢是水屬性？", option: ["火焰雞", "傑尼龜", "雷丘"], answer: 1),
        Questions(question: "超夢是從哪個寶可夢改造而來的？", option: ["快龍", "夢幻", "胖丁"], answer: 1),
        Questions(question: "以下哪個寶可夢是電屬性？", option: ["小火馬", "雷丘", "妙蛙種子"], answer: 1),
        Questions(question: "卡比獸的屬性是？", option: ["格鬥屬性", "一般屬性", "地面屬性"], answer: 1),
        Questions(question: "妙蛙花是哪兩種屬性？", option: ["毒 / 草", "草 / 水", "水 / 毒"], answer: 0),
        Questions(question: "火箭隊的貓老大叫什麼名字？", option: ["皮卡丘", "卡拉卡拉", "喵喵"], answer: 2),
        Questions(question: "小智的第一隻寶可夢是？", option: ["傑尼龜", "皮卡丘", "小火龍"], answer: 1),
        Questions(question: "六尾的進化型是？", option: ["九尾", "烈焰猴", "火狐狸"], answer: 0),
        Questions(question: "小剛是什麼系道館的館主？", option: ["水系", "岩石系", "火系"], answer: 1),
        Questions(question: "鯉魚王進化為哪一隻寶可夢？", option: ["龍蝦小兵", "暴鯉龍", "快龍"], answer: 1),
        Questions(question: "胖丁的特殊能力是什麼？", option: ["催眠術", "心電感應", "唱歌讓人睡著"], answer: 2),
        Questions(question: "寶可夢中登錄資料的設備叫什麼？", option: ["寶可夢圖鑑", "寶可夢手冊", "寶可夢傳送器"], answer: 0),
        Questions(question: "第二代遊戲的主角來自哪個地區？", option: ["關都地區", "城都地區", "神奧地區"], answer: 1),
        Questions(question: "路卡利歐是哪兩種屬性？", option: ["龍 / 火", "格鬥 / 鋼", "惡 / 超能力"], answer: 1),
        Questions(question: "以下哪一隻是傳說寶可夢？", option: ["皮丘", "洛奇亞", "喇叭芽"], answer: 1),
        Questions(question: "超夢首次出現在哪部劇場版？", option: ["水都的守護神", "大家的故事", "超夢的逆襲"], answer: 2),
        Questions(question: "寶可夢圖鑑中的第001號是？", option: ["妙蛙種子", "小火龍", "傑尼龜"], answer: 0),
        Questions(question: "以下哪一個不是伊布的進化型？", option: ["水伊布", "夢幻伊布", "雷伊布"], answer: 1),
        Questions(question: "下列哪一隻寶可夢是幽靈屬性？", option: ["耿鬼", "雷丘", "卡比獸"], answer: 0),
        Questions(question: "電龍是由哪一隻寶可夢進化而來？", option: ["咩利羊", "大嘴娃", "拉魯拉絲"], answer: 0),
        Questions(question: "下列哪一隻寶可夢具有飛行屬性？", option: ["比比鳥", "蚊香蝌蚪", "隆隆石"], answer: 0),
        Questions(question: "噴火龍屬於哪兩種屬性？", option: ["火 / 飛行", "火 / 龍", "火 / 地面"], answer: 0),
        Questions(question: "哪一隻寶可夢以睡覺著名？", option: ["卡比獸", "拉普拉斯", "妙蛙種子"], answer: 0),
        Questions(question: "水箭龜是傑尼龜的第幾階進化？", option: ["第一階", "第二階", "第三階"], answer: 2),
        Questions(question: "以下哪一個不是初始三選一的寶可夢？", option: ["妙蛙種子", "可達鴨", "小火龍"], answer: 1),
        Questions(question: "超能力屬性對哪一種屬性效果不佳？", option: ["格鬥", "惡", "毒"], answer: 1),
        Questions(question: "哪一代寶可夢首次引入雙打對戰？", option: ["第二代", "第三代", "第四代"], answer: 1),
        Questions(question: "以下哪一個是進化自伊布的型態？", option: ["冰伊布", "夢幻", "雷丘"], answer: 0),
        Questions(question: "快龍是哪一種屬性？", option: ["龍 / 飛行", "惡 / 飛行", "鋼 / 飛行"], answer: 0),
        Questions(question: "夢幻屬於哪一種稀有度？", option: ["一般寶可夢", "傳說寶可夢", "幻之寶可夢"], answer: 2),
        Questions(question: "可達鴨的進化型是？", option: ["哥達鴨", "嘎啦嘎啦", "鸭嘴火獸"], answer: 0),
        Questions(question: "誰是第一代最終冠軍？", option: ["小剛", "青綠", "渡"], answer: 1),
        Questions(question: "以下哪個寶可夢擁有多種進化分支？", option: ["伊布", "喵喵", "比比鳥"], answer: 0),
        Questions(question: "神奇寶貝中心的護士叫什麼名字？", option: ["小霞", "小菊兒", "喬伊"], answer: 2),
        Questions(question: "洛奇亞是哪兩種屬性？", option: ["飛行 / 超能力", "飛行 / 水", "龍 / 超能力"], answer: 0),
        Questions(question: "哪一隻寶可夢是火焰雞的前身？", option: ["力壯雞", "火稚雞", "火恐龍"], answer: 1),
        Questions(question: "皮丘是誰的進化前型？", option: ["皮卡丘", "雷丘", "喵喵"], answer: 0),
        Questions(question: "以下哪一隻寶可夢不是龍屬性？", option: ["暴鯉龍", "快龍", "烈咬陸鯊"], answer: 0),
        Questions(question: "在寶可夢世界中，最常見的捕捉工具是？", option: ["超級球", "精靈球", "高級球"], answer: 1),
        Questions(question: "哪隻寶可夢會進化為烈焰猴？", option: ["小火焰猴", "火焰雞", "火球鼠"], answer: 0),
        Questions(question: "使用雷之石能進化哪一隻寶可夢？", option: ["皮卡丘", "火稚雞", "火伊布"], answer: 0),
        Questions(question: "下列哪隻是水系與地面系的混合？", option: ["沼王", "蚊香蝌蚪", "鯉魚王"], answer: 0),
        Questions(question: "哪個地區首次引入伊布的冰屬性進化？", option: ["神奧", "合眾", "關都"], answer: 0),
        Questions(question: "胖丁進化之後叫什麼名字？", option: ["胖可丁", "皮可西", "吉利蛋"], answer: 0),
        Questions(question: "第一代共有多少隻寶可夢？", option: ["151", "150", "152"], answer: 0),
        Questions(question: "在寶可夢動畫中，小霞擅長哪一屬性？", option: ["火屬性", "水屬性", "飛行屬性"], answer: 1),
        Questions(question: "洛奇亞的所在地是哪裡？", option: ["漩渦群島", "火山島", "雙葉鎮"], answer: 0),
        Questions(question: "以下哪一種是格鬥系寶可夢？", option: ["怪力", "呆呆獸", "風速狗"], answer: 0),
        Questions(question: "呆呆獸進化為哪一隻寶可夢？", option: ["哥達鴨", "呆殼獸", "巨鉗蟹"], answer: 1),
        Questions(question: "長翅鷗是哪兩種屬性？", option: ["水 / 飛行", "一般 / 飛行", "水 / 普通"], answer: 0),
        Questions(question: "以下哪隻寶可夢需要親密度進化？", option: ["皮丘", "妙蛙種子", "鯉魚王"], answer: 0),
        Questions(question: "火系克制哪一屬性？", option: ["草", "水", "地面"], answer: 0),
        Questions(question: "草系怕哪種屬性？", option: ["水", "火", "一般"], answer: 1),
        Questions(question: "哪一代首次引入寶可夢性別？", option: ["第二代", "第一代", "第三代"], answer: 0),
        Questions(question: "哪一種球適合捕捉水系寶可夢？", option: ["潛水球", "快速球", "治癒球"], answer: 0),
        Questions(question: "第三代的地區名稱是什麼？", option: ["關都", "城都", "豐緣"], answer: 2),
        Questions(question: "噴火龍可以使用哪一種屬性招式？", option: ["火焰放射", "水槍", "葉刃"], answer: 0),
        Questions(question: "哪一隻寶可夢擁有三個進化階段？", option: ["妙蛙種子", "雷丘", "可達鴨"], answer: 0),
        Questions(question: "以下哪一種是幽靈 / 毒屬性的組合？", option: ["耿鬼", "烈咬陸鯊", "椰蛋樹"], answer: 0),
        Questions(question: "下列哪一位角色是聯盟冠軍？", option: ["竹蘭", "小剛", "小霞"], answer: 0),
        Questions(question: "小光的搭檔寶可夢是？", option: ["波加曼", "小火焰猴", "小貓怪"], answer: 0),
        Questions(question: "寶可夢中可學會“影子球”的屬性為？", option: ["幽靈", "火", "一般"], answer: 0),
        Questions(question: "雷丘是由什麼進化而來？", option: ["皮卡丘", "皮丘", "雷精靈"], answer: 0),
        Questions(question: "以下哪一隻寶可夢具有鋼屬性？", option: ["胖丁", "巨金怪", "雷丘"], answer: 1),
        Questions(question: "地面屬性克制哪一屬性？", option: ["電", "水", "飛行"], answer: 0),
        Questions(question: "第二代傳說寶可夢之一是哪一隻？", option: ["炎帝", "夢幻", "火恐龍"], answer: 0),
        Questions(question: "火焰雞是哪兩種屬性？", option: ["火 / 格鬥", "火 / 飛行", "火 / 一般"], answer: 0),
        Questions(question: "水君是哪一屬性的傳說寶可夢？", option: ["水", "冰", "超能力"], answer: 0),
        Questions(question: "以下哪個不是道館屬性？", option: ["閃光", "草", "鋼"], answer: 0),
        Questions(question: "精靈球最早出現在哪一代？", option: ["第一代", "第二代", "第三代"], answer: 0),
        Questions(question: "卡蒂狗進化成什麼？", option: ["風速狗", "火伊布", "烈焰猴"], answer: 0),
        Questions(question: "哪隻寶可夢可以 Mega 進化？", option: ["噴火龍", "夢幻", "鯉魚王"], answer: 0),
        Questions(question: "電屬性對哪一屬性無效？", option: ["地面", "飛行", "水"], answer: 0),
        Questions(question: "小智在阿羅拉地區的搭檔是誰？", option: ["莫魯貝可", "奈克洛茲瑪", "摔角喵"], answer: 2),
        Questions(question: "哪個是阿羅拉的初始寶可夢？", option: ["木木梟", "水躍魚", "火球鼠"], answer: 0),
        Questions(question: "以下哪一種是妖精屬性寶可夢？", option: ["仙子伊布", "毒刺水母", "雙彈瓦斯"], answer: 0),
        Questions(question: "可可多拉進化為什麼？", option: ["波士可多拉", "巨金怪", "鐵甲暴龍"], answer: 0),
        Questions(question: "哪一隻寶可夢有多種形態變化？", option: ["洛托姆", "拉普拉斯", "果然翁"], answer: 0),
        Questions(question: "以下哪個不是幻之寶可夢？", option: ["蓋歐卡", "雪拉比", "比克提尼"], answer: 0),
        Questions(question: "以下哪隻寶可夢是傳說中的地面系？", option: ["固拉多", "帝牙盧卡", "鳳王"], answer: 0),
        Questions(question: "在關都地區，第一個道館是什麼屬性？", option: ["岩石", "草", "電"], answer: 0),
        Questions(question: "第四代首次出現在哪個地區？", option: ["合眾", "神奧", "卡洛斯"], answer: 1),
        Questions(question: "以下哪一種不是進化條件？", option: ["吃樹果", "親密度", "使用石頭"], answer: 0),
        Questions(question: "哪一隻寶可夢以音樂為主題？", option: ["火恐龍", "鬼斯", "音波龍"], answer: 2),
        Questions(question: "寶可夢動畫最早在日本播出年份是？", option: ["1997", "1999", "2000"], answer: 0),
        Questions(question: "寶可夢的創始公司是哪一家？", option: ["任天堂", "SEGA", "萬代"], answer: 0),
        Questions(question: "寶可夢圖鑑由誰提供給主角？", option: ["大木博士", "小剛", "竹蘭"], answer: 0),
        Questions(question: "誰是伊布的冰屬性進化型？", option: ["冰伊布", "水伊布", "月亮伊布"], answer: 0),
        Questions(question: "以下哪一隻寶可夢是火屬性？", option: ["火球鼠", "妙蛙種子", "水箭龜"], answer: 0),
        Questions(question: "哪一位角色是小智的對手？", option: ["青綠", "喬伊", "小剛"], answer: 0),
        Questions(question: "哪一種寶可夢能學會技能“影子拳”？", option: ["耿鬼", "快龍", "雷伊布"], answer: 0),
        Questions(question: "以下哪個是豐緣地區的主角？", option: ["小遙", "小霞", "小光"], answer: 0),
        Questions(question: "哪一隻寶可夢能夠 Mega 進化？", option: ["巨金怪", "比比鳥", "皮卡丘"], answer: 0),
        Questions(question: "以下哪隻寶可夢是地面 / 鋼屬性？", option: ["可可多拉", "雷丘", "胖丁"], answer: 0),
        Questions(question: "哪一隻寶可夢的特性是“變幻自如”？", option: ["甲賀忍蛙", "卡比獸", "喵喵"], answer: 0),
        Questions(question: "小火馬的進化型是什麼？", option: ["烈焰馬", "風速狗", "九尾"], answer: 0),
        Questions(question: "以下哪一位不是道館館主？", option: ["大木博士", "小剛", "阿桔"], answer: 0),
        Questions(question: "哪一隻寶可夢以“海中歌聲”聞名？", option: ["拉普拉斯", "暴鯉龍", "快龍"], answer: 0),
        Questions(question: "以下哪一隻寶可夢是電 / 鋼屬性？", option: ["磁怪", "雷丘", "小火龍"], answer: 1),
        Questions(question: "夢幻是第幾號圖鑑寶可夢？", option: ["149", "151", "150"], answer: 1),
        Questions(question: "哪一隻寶可夢是水 / 妖精屬性？", option: ["呆呆王", "布丁魚", "布魯皇"], answer: 1),
        Questions(question: "寶可夢中使用“火之石”可以進化？", option: ["雷精靈", "火伊布", "水伊布"], answer: 1),
        Questions(question: "哪個地區是第四世代的舞台？", option: ["合眾", "神奧", "關都"], answer: 1),
        Questions(question: "以下哪一隻是鋼 / 飛行屬性？", option: ["波士可多拉", "盔甲鳥", "巨鉗螳螂"], answer: 1),
        Questions(question: "妙蛙花是由哪一隻寶可夢進化而來？", option: ["妙蛙種子", "妙蛙草", "妙蛙藤"], answer: 1),
        Questions(question: "以下哪一隻寶可夢會使用“水炮”？", option: ["雷伊布", "水箭龜", "烈焰猴"], answer: 1),
        Questions(question: "以下哪一隻寶可夢不是傳說寶可夢？", option: ["帝牙盧卡", "雷丘", "鳳王"], answer: 1),
        Questions(question: "下列哪個是伊布的惡屬性進化？", option: ["雷伊布", "月亮伊布", "火伊布"], answer: 1),
        Questions(question: "哪一隻寶可夢會進化為電龍？", option: ["雷精靈", "皮丘", "電螢蟲"], answer: 2),
        Questions(question: "以下哪個地區與阿羅拉地區對應？", option: ["神奧", "合眾", "加拉爾"], answer: 2),
        Questions(question: "哪一隻寶可夢是龍 / 地面屬性？", option: ["沙漠蜻蜓", "鯉魚王", "噴火龍"], answer: 2),
        Questions(question: "使用暗之石可進化哪一隻寶可夢？", option: ["皮卡丘", "夢幻", "燈火幽靈"], answer: 2),
        Questions(question: "哪隻寶可夢有“伽勒爾形態”？", option: ["噴火龍", "臭泥", "雷丘"], answer: 2),
        Questions(question: "哪個技能是草系的？", option: ["十萬伏特", "噴射火焰", "飛葉快刀"], answer: 2),
        Questions(question: "以下哪隻寶可夢擁有鋼 / 超能力屬性？", option: ["路卡利歐", "大鋼蛇", "巨金怪"], answer: 2),
        Questions(question: "哪個是火 / 鬼屬性寶可夢？", option: ["耿鬼", "黑魯加", "燈火幽靈"], answer: 2),
        Questions(question: "哪一種是傳說中的空間寶可夢？", option: ["蓋歐卡", "固拉多", "帝牙盧卡"], answer: 2),
        Questions(question: "哪一隻寶可夢代表“太陽”？", option: ["月亮伊布", "露奈雅拉", "索爾迦雷歐"], answer: 2),
    ]
    
    @IBOutlet weak var frameImage: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionButton: [UIButton]!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var index: Int = 0
    var score: Int = 0
    
    var scoreText: String {
        return "分數：\(score)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        frameImage.frame = view.bounds
        questionLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        scoreLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        updateUI(qaItem: defaultQA)
    }

    @IBAction func selection(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel?.text ?? ""
        if userAnswer == defaultQA.option[0] { return }
        
        let realAnswerIdx = listQA[index-1].answer
        let realAnswerStr = listQA[index-1].option[realAnswerIdx]
        
//        for i in 0...2 {
//            if optionButton[i].titleLabel?.text == realAnswer {
//                optionButton[i].tintColor = .systemGreen
//            }
//        }
        
        if userAnswer == realAnswerStr {
            score += 10
            scoreLabel.text = scoreText
        } else {
//            sender.tintColor = .systemRed
        }
    
            
        let controller = UIAlertController(title: (userAnswer == realAnswerStr) ? "O: 答對了" : "X: 答錯了",
                                          message: "正確答案：\(realAnswerStr)",preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            if self.index > 3 {
                self.performSegue(withIdentifier: "showScoreSegue", sender: nil)
            } else {
                self.updateUI(qaItem: self.listQA[self.index])
            }
        }
        
        controller.addAction(okAction)
        present(controller, animated: true)
    }
    
    @IBAction func startGame(_ sender: Any) {
        updateUI(qaItem: listQA[index])
    }
    
    
    func updateUI(qaItem: Questions) {
        
        let newOption:[String] = qaItem.option.shuffled()
        
        for i in 0...2 {
            optionButton[i].tintColor = .tintColor
            optionButton[i].setTitle(newOption[i], for: .normal)
        }
        
        let id =  listQA.firstIndex(where: { $0 == qaItem }) ?? 0
        if id == 0 {
            startButton.isHidden = false
            scoreLabel.isHidden = true
            questionLabel.text = qaItem.question
            listQA.shuffle()
            index = 1
            score = 0
            scoreLabel.text = scoreText

        } else {
            startButton.isHidden = true
            scoreLabel.isHidden = false
            questionLabel.text = "\(id). " + qaItem.question
            index = (index + 1) % listQA.count
        }
    }
    
    @IBSegueAction func showScoreView(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> ScoreViewController? {
        let controller = ScoreViewController(coder: coder)
        controller?.score = score
        
        updateUI(qaItem: defaultQA)
        
        return controller
    }
}

#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "PokemonViewController")
}
