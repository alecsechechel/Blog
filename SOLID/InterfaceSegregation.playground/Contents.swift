//4. Interface segregation principle - Принцип разделения интерфейса
//Клиенты не должны зависить от методов, которые они не используют.
//Много специализированных интерфейсов лучше, чем один универсальный.

import UIKit

protocol Skills {
    var swift: Bool {get set}
    var objectC: Bool {get set}
    var html: Bool {get set}
    var css: Bool {get set}
    var ruby: Bool {get set}
    var php: Bool {get set}
}

class CvIos: Skills {
    var swift: Bool
    var objectC: Bool
    var html: Bool
    var css: Bool
    var ruby: Bool
    var php: Bool
    
    init(swift: Bool, objectC: Bool, html: Bool, css: Bool, ruby: Bool, php: Bool) {
        self.swift = swift
        self.objectC = objectC
        self.html = html
        self.css = css
        self.ruby = ruby
        self.php = php
    }
}

class CvWebFrontEnd: Skills {
    var swift: Bool
    var objectC: Bool
    var html: Bool
    var css: Bool
    var ruby: Bool
    var php: Bool
    
    init(swift: Bool, objectC: Bool, html: Bool, css: Bool, ruby: Bool, php: Bool) {
        self.swift = swift
        self.objectC = objectC
        self.html = html
        self.css = css
        self.ruby = ruby
        self.php = php
    }
}

class CvWebBackEnd: Skills {
    var swift: Bool
    var objectC: Bool
    var html: Bool
    var css: Bool
    var ruby: Bool
    var php: Bool
    
    init(swift: Bool, objectC: Bool, html: Bool, css: Bool, ruby: Bool, php: Bool) {
        self.swift = swift
        self.objectC = objectC
        self.html = html
        self.css = css
        self.ruby = ruby
        self.php = php
    }
}

let ios = CvIos(swift: true, objectC: true, html: false, css: false, ruby: false, php: false)
let front = CvWebFrontEnd(swift: false, objectC: false, html: true, css: true, ruby: false, php: false)
let back = CvWebBackEnd(swift: false, objectC: false, html: false, css: false, ruby: true, php: true)

protocol IosSkills {
    var swift: Bool {get set}
    var objectC: Bool {get set}
}
protocol FrontSkills {
    var html: Bool {get set}
    var css: Bool {get set}
}

protocol BackSkills {
    var ruby: Bool {get set}
    var php: Bool {get set}
}

class CvIosNew: IosSkills {
    var swift: Bool
    var objectC: Bool
    
    init(swift: Bool, objectC: Bool) {
        self.swift = swift
        self.objectC = objectC
    }
}

class CvWebFrontEndNew: FrontSkills {
    var html: Bool
    var css: Bool
    
    init(html: Bool, css: Bool) {
        self.html = html
        self.css = css
    }
}

class CvWebBackEndNew: BackSkills {
    var ruby: Bool
    var php: Bool
    
    init(ruby: Bool, php: Bool) {
        self.ruby = ruby
        self.php = php
    }
}

print("test")




