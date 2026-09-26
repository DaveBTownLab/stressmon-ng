pkgname=stressmon-ng
pkgver=0.1.0
pkgrel=1
pkgdesc="Simple CPU stress test and thermal throttling monitor"
arch=('any')
url="https://github.com/DaveBTownLab/stressmon-ng"
license=('MIT')

depends=('bash' 'stress-ng' 'lm_sensors' 'konsole')

package() {
    cd "$startdir"
    install -Dm755 stressmon-ng "$pkgdir/usr/bin/stressmon-ng"
    install -Dm755 scripts/stresscpu "$pkgdir/usr/bin/stresscpu"
    install -Dm755 scripts/stressmon "$pkgdir/usr/bin/stressmon"
    install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname/README.md"
    install -Dm644 LICENSE "$pkgdir/usr/share/licences/$pkgmane/LICENSE"
    }