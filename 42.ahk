#Requires AutoHotkey v2.0
SetCapsLockState "AlwaysOff"

CapsLock & W::Up
CapsLock & A::Left
CapsLock & S::Down
CapsLock & D::Right

CapsLock & I::Insert
CapsLock & O::Home
CapsLock & P::PgUp
CapsLock & K::Delete
CapsLock & L::End
CapsLock & SC027::PgDn

; ~ 다음에 =를 입력하면 ~를 ≈로 바꿔주는 스크립트
; 출처: 인터넷의 어떤 똑똑한 사람
:*?:~=::≈

; 위 스크립트를 응용한 것들
:*?:+-::±
:*?:`/=::≠
:*?:1/2::½
:*?:1/3::⅓
:*?:1/4::¼
:*?:1/5::⅕
:*?:1/6::⅙
:*?:1/7::⅐
:*?:1/8::⅛
:*?:1/9::⅑
:*?:1/10::⅒
:*?:2/3::⅔
:*?:2/5::⅖
:*?:3/4::¾
:*?:3/5::⅗
:*?:3/8::⅜
:*?:4/5::⅘
:*?:5/6::⅚
:*?:5/8::⅝
:*?:7/8::⅞

CapsLock & NumpadAdd::SendText "※"
CapsLock & NumpadSub::SendText "°"
CapsLock & NumpadMult::SendText "×"
CapsLock & NumpadDiv::SendText "÷"
CapsLock & NumpadDot::SendText "…"
CapsLock & [::SendText "「"
CapsLock & ]::SendText "」"
CapsLock & ,::SendText "〈"
CapsLock & .::SendText "〉"
CapsLock & /::SendText "✓"
CapsLock & \::SendText "✗"

CapsLock & Numpad4::SendText "←"
CapsLock & Numpad7::SendText "↖"
CapsLock & Numpad8::SendText "↑"
CapsLock & Numpad9::SendText "↗"
CapsLock & Numpad6::SendText "→"
CapsLock & Numpad3::SendText "↘"
CapsLock & Numpad2::SendText "↓"
CapsLock & Numpad1::SendText "↙"
CapsLock & Numpad5::SendText "·"
CapsLock & Numpad0::SendText "Δ"

CapsLock & 1::SendText "¹"
CapsLock & 2::SendText "²"
CapsLock & 3::SendText "³"
CapsLock & 4::SendText "⁴"
CapsLock & 5::SendText "⁵"
CapsLock & 6::SendText "⁶"
CapsLock & 7::SendText "⁷"
CapsLock & 8::SendText "⁸"
CapsLock & 9::SendText "⁹"
CapsLock & 0::SendText "⁰"
CapsLock & -::SendText "⁻"
CapsLock & =::SendText "⁺"
CapsLock & `::SendText "ⁿ"

LCtrl & 1::SendText "₁"
LCtrl & 2::SendText "₂"
LCtrl & 3::SendText "₃"
LCtrl & 4::SendText "₄"
LCtrl & 5::SendText "₅"
LCtrl & 6::SendText "₆"
LCtrl & 7::SendText "₇"
LCtrl & 8::SendText "₈"
LCtrl & 9::SendText "₉"
LCtrl & 0::SendText "₀"
LCtrl & -::SendText "₋"
LCtrl & =::SendText "₊"
LCtrl & `::SendText "ₙ"

CapsLock & Tab::{
    clipboardSaved := ClipboardAll()
    A_Clipboard := "	"
    Send "^v"
    Sleep 50
    A_Clipboard := clipboardSaved
    clipboardSaved := ""
}