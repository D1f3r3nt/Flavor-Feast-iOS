import Foundation

func getFlagFromAreaName(area: String) -> String {
    let flags = [
        "american", "british", "canadian", "chinese",
        "croatian", "dutch", "egyptian", "filipino",
        "french", "greek", "indian", "irish", "italian",
        "jamaican", "japanese", "kenyan", "malaysian",
        "mexican", "moroccan", "polish", "portuguese",
        "russian", "spanish", "thai", "tunisian",
        "turkish", "vietnamese"
    ]
    
    if flags.contains(area) {
        return "flag_\(area)"
    } else {
        return "flag_unknown"
    }
}
