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
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC0cyo2+o0WJ96u6aIs4LVs38VgTTKuhpb76d9ITVHX7kEM7Ia3rJ1K5DMTcokz2XX+Higy0a2hju2nYCbU+pkMm8HnUQo0pkNhadfCvrI2bcQBd/YX5+BhE85CvaWt38amZwflR9zhiujUCvjSfxY1NzugP9xJie4eXzFZEP9ZStu7TcZuZsJ/n+8LhD9Ry/jOAJuLarWiN0N7otjAGvpZssqUCdDBmkEopBGRD7i3087sclKHo2EuAMjxqZXz0ava2I+06MK0uMuQnv8ZNToqINt3jiAoTxERa311/y5zuL8VHACp0us1tqOUUjGPO4TYQoaLLNOjg6upMHxkXI7zB8Wkjz2aahYmSPaOkhcxv1IMmBgmqtJ7HQuqxPbWtVNQhbLdiHVtqHkasMlI3z7rpqjQOo8rwszmDVZn5DT/zE7kaFNiWCG84+9d0tVoLdDk7xNfpdqaXs4Dy9w6aXUKbL0BQVoq+gf0mJYHMXia4E+uLD7Foc3JzVBoKRlSH3W676LPfFLpxWwYez99aF/jaLzzrAVne10LDoIxOIxnpnYFWrtROMKirPugghRf1e8/2BpOa8zidg1A0FQ1z3y+oJU0xGT+pKTwpPbZEfIiowN8kgtWPNmkXomyxrlRgz1wwYwnCnYTOr4BNjpmxyqCHh2n8JEqflXL2zKwTQ0ZZw== olivier@mg-crea.com
```


## Contributing

In lieu of a formal styleguide, take care to maintain the existing coding style.
Please submit all pull requests the against master branch. If your unit test contains javascript patches or features, you should include relevant unit tests. Thanks!


## Authors

**Olivier Louvignes**

+ http://olouv.com
+ http://github.com/ng-tools

Inspired by [sameersbn](https://github.com/sameersbn) great docker images.


## Copyright and license

    The MIT License

    Copyright (c) 2014 Olivier Louvignes

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
