//
//  Order.swift
//  SubwayKiosk
//
//  Created by CaliaPark on 4/5/24.
//

struct Order {
    static var id: Int = 0
    
    var menu: Menu
    var bread: Bread = .flat
    var cheese: Cheese = .shredded
    var toast: Toast = .toast
    var veggie: [Veggie] = []
    var sauce: [Sauce] = []
    var size: Size = .half
    
    init(menu: Menu) {
        self.menu = menu
    }
}

enum Menu: String {
    case eggmayo = "에그마요"
    case pulled = "폴드포크"
    case shrimp = "쉬림프"
    case italian = "이탈리안비엘티"
    case spicy = "스파이시이탈리안비엘티"
    case kbarbeque = "k바베큐"
    case steakcheese = "스테이크앤치즈"
}

enum Bread: String {
    case flat = "플랫브레드"
    case honey = "허니오트"
    case hearty = "하티"
    case parmesan = "파마산오레가노"
    case white = "화이트"
    case wheat = "위트"
}

enum Cheese: String {
    case shredded = "슈레드치즈"
    case american = "아메리칸치즈"
    case mozza = "모짜렐라치즈"
}

enum Toast: String {
    case toast = "토스트O"
    case plain = "토스트X"
}

enum Veggie: String {
    case lettuce = "양상추"
    case tomato = "토마토"
    case cucumber = "오이"
    case pickle = "피클"
    case olive = "올리브"
    case onion = "양파"
}

enum Sauce: String {
    case ranch = "랜치"
    case mayo = "마요네즈"
    case mustard = "머스타드"
    case horse = "홀스래디쉬"
    case hotchilli = "핫칠리"
    case oliveoil = "올리브오일"
}

enum Size: String {
    case half = "15cm"
    case whole = "30cm"
}
