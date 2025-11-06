//
//  Cards.swift
//  DesignSystem
//
//  Created by MARQUES Thomas on 04/11/2025.
//

import SwiftUI

public struct Card<Content: View>: View {
    private let content: Content
    let spacing: CGFloat

    public init(@ViewBuilder content: () -> Content, spacing: CGFloat = 8) {
        self.content = content()
        self.spacing = spacing
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: spacing) {
            content
        }
        .padding(16)
        .background(.ultraThinMaterial.opacity(0.7))
        .foregroundColor(.black.opacity(0.7))
        .cornerRadius(16)
    }
}

public struct WeatherHourCard: View {
    let hour: String
    let icon: ImageResource
    let temperature: String
    let chance_of_rain: Double
    
    public init(hour: String, icon: ImageResource, temperature: String, chance_of_rain: Double) {
        self.hour = hour
        self.icon = icon
        self.temperature = temperature
        self.chance_of_rain = chance_of_rain
    }
    
    public var body: some View {
        VStack(spacing: 10) {
            Text("\(hour)")
                .font(.caption)
            Image(icon)
                .resizable()
                .scaledToFill()
                .frame(width: 32, height: 32)
                .clipped()
            Text("\(temperature)")
                .font(.callout)
            HStack(spacing: 2) {
                Image(Images.rainDrop)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 16, height: 16)
                    .clipped()
                Text("\(chance_of_rain, specifier: "%.0f")%")
                    .font(.caption)
            }
        }
    }
}

public struct WeatherDayForecastCard: View {
    let day: String
    let icon: ImageResource
    let dayTemperature: String
    let nightTemperature: String
    
    public init (day: String, icon: ImageResource, dayTemperature: String, nightTemperature: String) {
        self.day = day
        self.icon = icon
        self.dayTemperature = dayTemperature
        self.nightTemperature = nightTemperature
    }
    
    public var body: some View {
        HStack {
            Text("\(day)")
            Spacer()
            Image(icon)
                .resizable()
                .scaledToFill()
                .frame(width: 24, height: 24)
                .clipped()
            Spacer()
            Text("\(dayTemperature)")
            Text("\(nightTemperature)")
        }
    }
}
