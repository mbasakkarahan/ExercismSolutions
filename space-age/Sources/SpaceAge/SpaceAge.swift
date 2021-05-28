struct SpaceAge {
    let SecondsInEarth = 31557600.0
    var seconds:Double
    var onEarth:Double {
        return ((seconds / SecondsInEarth) * 100 ).rounded() / 100
    }
    var onMercury:Double {
        return ((onEarth / 0.2408467) * 100 ).rounded() / 100
    }
    var onVenus:Double {
        return ((onEarth / 0.61519726) * 100 ).rounded() / 100
    }
    var onMars:Double {
        return ((onEarth / 1.8808158) * 100 ).rounded() / 100
    }
    var onJupiter:Double {
        return ((onEarth / 11.862615) * 100 ).rounded() / 100
    }
    var onSaturn:Double {
        return ((onEarth / 29.447498) * 100 ).rounded() / 100
    }
    var onUranus:Double {
        return ((onEarth / 84.016846) * 100 ).rounded() / 100
    }
    var onNeptune:Double {
        return ((onEarth / 164.79132) * 100 ).rounded() / 100
    }
    
    init(_ seconds:Double) {
        self.seconds = seconds
    }

}
