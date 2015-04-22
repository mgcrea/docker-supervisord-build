# docker-supervisord-build

Base image with both supervisord+ssh installed.

Leverages the `ONBUILD` instruction to setup an authorized ssh key, and thus must be targeted from another Dockerfile to work properly.


## Getting started

- In your `./Dockerfile`:

```
FROM mgcrea/supervisor-build:latest
MAINTAINER Olivier Louvignes <olivier@mg-crea.com>
```

- Add your RSA **public** key to `./files/id_rsa.pub`:

```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC0cyo2+o0WJ96u6aIs4LVs38VgTTKuhpb76d9ITVHX7kEM7Ia3rJ1K5DMTcokz2XX+Higy0a2hju2nYCbU+pkMm8HnUQo0pkNhadfCvrI2bcQBd/YX5+BhE85CvaWt38amZwflR9zhiujUCvjSfxY1NzugP9xJie4eXzFZEP9ZStu7TcZuZsJ/n+8LhD9Ry/jOAJuLarWiN0N7otjAGvpZssqUCdDBmkEopBGRD7i3087sclKHo2EuAMjxqZXz0ava2I+06MK0uMuQnv8ZNToqINt3jiAoTxERa311/y5zuL8VHACp0us1tqOUUjGPO4TYQoaLLNOjg6upMHxkXI7zB8Wkjz2aahYmSPaOkhcxv1IMmBgmqtJ7HQuqxPbWtVNQhbLdiHVtqHkasMlI3z7rpqjQOo8rwszmDVZn5DT/zE7kaFNiWCG84+9d0tVoLdDk7xNfpdqaXs4Dy9w6aXUKbL0BQVoq+gf0mJYHMXia4E+uLD7Foc3JzVBoKRlSH3W676LPfFLpxWwYez99aF/jaLzzrAVne10LDoIxOIxnpnYFWrtROMKirPugghRf1e8/2BpOa8zidg1A0FQ1z3y+oJU0xGT+pKTwpPbZEfIiowN8kgtWPNmkXomyxrlRgz1wwYwnCnYTOr4BNjpmxyqCHh2n8JEqflXL2zKwTQ0ZZw== olviier@mg-crea.com
```
