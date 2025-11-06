//
//  Images.swift
//  DesignSystem
//
//  Created by MARQUES Thomas on 05/11/2025.
//

import SwiftUI

public enum Images {
    public static let backgroundWeather = ImageResource(name: "BackgroundWeather", bundle: .module)
    public static let backgroundAube = ImageResource(name: "BackgroundAube", bundle: .module)
    public static let backgroundDay = ImageResource(name: "BackgroundDay", bundle: .module)
    public static let backgroundCrepuscule = ImageResource(name: "BackgroundCrepuscule", bundle: .module)
    public static let backgroundNight = ImageResource(name: "BackgroundNight", bundle: .module)
    public static let backgroundMidnight = ImageResource(name: "BackgroundMidnight", bundle: .module)
    public static let backgroundLeverDeSoleil = ImageResource(name: "BackgroundLeverDeSoleil", bundle: .module)
    public static let fullMoon = ImageResource(name: "FullMoon", bundle: .module)
    public static let newMoon = ImageResource(name: "NewMoon", bundle: .module)
    public static let waxingCrescent = ImageResource(name: "WaxingCrescent", bundle: .module)
    public static let waxingGibbous = ImageResource(name: "WaxingGibbous", bundle: .module)
    public static let waningGibbous = ImageResource(name: "WaningGibbous", bundle: .module)
    public static let firstQuarter = ImageResource(name: "FirstQuarter", bundle: .module)
    public static let sunrise = ImageResource(name: "Sunrise", bundle: .module)
    public static let sunset = ImageResource(name: "Sunset", bundle: .module)
    public static let sun = ImageResource(name: "Sun", bundle: .module)
    public static let partlyCloudy = ImageResource(name: "PartlyCloudy", bundle: .module)
    public static let cloud = ImageResource(name: "Cloud", bundle: .module)
    public static let fog = ImageResource(name: "Fog", bundle: .module)
    public static let rain = ImageResource(name: "Rain", bundle: .module)
    public static let thunder = ImageResource(name: "Thunder", bundle: .module)
    public static let thunderstorm = ImageResource(name: "Thunderstorm", bundle: .module)
    public static let snow = ImageResource(name: "Snow", bundle: .module)
    public static let ice = ImageResource(name: "Ice", bundle: .main)
    public static let freeze = ImageResource(name: "Freeze", bundle: .module)
    public static let rainDrop = ImageResource(name: "RainDrop", bundle: .module)
    public static let wind = ImageResource(name: "Wind", bundle: .module)
    public static let compass = ImageResource(name: "Compass", bundle: .module)
    
    public static func fromConditionIcon(_ icon: String) -> ImageResource {
        switch icon.lowercased().trimmingCharacters(in: .whitespacesAndNewlines) {
        case "clear":
            return firstQuarter
        case "sunny":
            return sun
        case "partly cloudy":
            return partlyCloudy
        case "cloudy":
            return cloud
        case "overcast", "mist", "fog":
            return fog
        case "rain", "patchy rain nearby", "light drizzle", "patchy light drizzle", "patchy light rain", "light rain", "moderate rain at times", "moderate rain", "heavy rain at times", "heavy rain", "light rain shower", "moderate or heavy rain shower", "torrential rain shower":
            return rain
        case "patchy snow possible", "patchy sleet possible", "blowing snow", "blizzard", "light sleet", "moderate or heavy sleet", "patchy light snow", "light snow", "patchy moderate snow", "moderate snow", "patchy heavy snow", "heavy snow", "light sleet showers", "moderate or heavy sleet showers", "light snow showers", "moderate or heavy snow showers":
            return snow
        case "patchy freezing drizzle possible", "freezing fog", "freezing drizzle", "heavy freezing drizzle", "light freezing rain", "moderate or heavy freezing rain":
            return freeze
        case "ice pellets", "light showers of ice pellets", "moderate or heavy showers of ice pellets":
            return ice
        case "thundery outbreaks possible", "patchy light rain with thunder", "patchy light snow with thunder":
            return thunder
        case"moderate or heavy rain with thunder", "moderate or heavy snow with thunder":
            return thunderstorm
        case "sunrise":
            return sunrise
        case "sunset":
            return sunset
        default:
            return sunset
        }
    }
}
