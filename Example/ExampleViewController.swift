// MIT License
//
// Copyright (c) 2017 Joni Van Roost
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit
import VerticalCardSwiper

class ExampleViewController: UIViewController, VerticalCardSwiperDelegate, VerticalCardSwiperDatasource {
    
    private var cardSwiper: VerticalCardSwiper!
    
    override func loadView() {
        super.loadView()
        
        cardSwiper = view as? VerticalCardSwiper
        self.view = cardSwiper
        cardSwiper.delegate = self
        cardSwiper.datasource = self
        
        // register cardcell for storyboard use
        cardSwiper.register(ExampleCardCell.self, forCellWithReuseIdentifier: "ExampleCell")
    }
    
    func cardForItemAt(cardSwiperView: CardSwiperView, cardForItemAt index: Int) -> CardCell {
        
        let cardCell = cardSwiperView.dequeueReusableCell(withReuseIdentifier: "ExampleCell", for: index) as! ExampleCardCell
        
        cardCell.setRandomBackgroundColor()
        
        return cardCell
    }
    
    func numberOfCards(cardSwiperView: CardSwiperView) -> Int {
        return 100
    }
    
    func didSwipeCardAway(card: CardCell, index: Int, swipeDirection: CellSwipeDirection) {

        
    }
}