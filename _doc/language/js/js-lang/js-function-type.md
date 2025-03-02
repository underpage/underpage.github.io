---
order: 9.1
title: JS
description: 자바스크립트 함수 종류
summary:
keywords:
- js
- js function
- arrow
- callback
- async
- generator
tags:
- js
created_time: 2025-02-24 07:11
modified_time: 2025-03-02 12:20
---

# JS Function Type
: 자바스크립에서 사용하는 다양한 함수들로 형태, 동작 방식, 특성 등에 따라 구분됨  

**내장 함수**
- 내장 객체의 함수들
- 호스트 객체의 함수들 

**선언 방식**
- [일반 함수](#global-function)
- [익명 함수](#anonymous-function)
- [화살표 함수](#arrow-function)
- [동적 함수](#dynamic-function)

**범위**
- [전역 함수](#global-function)
- [중첩 함수](#nested-function)

**용도**
- [헬퍼 함수](#helper-function)
- [유틸리티 함수](#utility-function)
- [생성자 함수](#constructor-function)
- [팩토리 함수](#factory-function)

**실행 방식**
- [콜백 함수](#callback-function)
- [고차 함수](#higher-order-function)
- [바운드 함수](#bound-function)
- [재귀 함수](#recursive-function)
- [비동기 함수](#asynchronous-function)
- [제너레이터 함수](#generator-function)



## Regular Function
: 함수 선언식을 사용한 기본적인 함수로 실행 컨텍스트를 생성함  

```js
function fn(arg) {
  return arg;
}
```



## Anonymous Function 
: 이름 없이 정의된 함수로 호이스팅이 발생하지 않음  
: 변수, 객체의 프로퍼티, 다른 함수의 인자를 통해 사용함  
: 함수가 반복 호출된다면 익명 함수 대신 명명된 함수로 정의  

```js
var fn = function() {};

var result = (function(a, b){ return a + b })(1,2);
result === 3
```



## Arrow Function
: ES2015에 도입된 간결한 함수 표현식으로 정의한 함수  
: 항상 익명 함수로 생성자 함수로 사용할 수 없음  
: 실행 컨텍스트를 생성하지 않고 상위 스코프의 this를 상속함  
: 함수 본문을 중괄호로 감싸면 블록 본문으로 아니면 표현식 본문으로 처리함  

```js
// 표현식 본문
// 표현식 결과가 암묵적으로 반환됨
var ex = arg => console.log(arg);

var ex = () => console.log();

var ex = (x, y, ...args) => console.log(...args);

var ex = (value) => ({ key: value})


// 블록 본문
// return 문을 명시하지 않으면 undefined가 반환됨
var ex = (arg) => {
  console.log(arg);
  return arg;
}
```



## Dynamic Function
: 함수 생성자를 통해 정의한 함수로 런타임에 동적으로 생성됨  
: 동적 함수는 항상 전역 스코프에서 생성되어 [클로저](../js-closure.md)를 형성할 수 없음  
: 함수 생성이 느려 일반적인 함수 선언이나 표현식보다 성능 면에서 불리함  

```js
// 마지막 인자가 함수 본문으로 제공되어 런타임에 평가됨
var fn = new Function('arg', 'return arg');
fn(0) === 0
```



## Global Function
: 전역 스코프에 정의된 함수  
: 호스트 환경 전역 객체의 프로퍼티가 되어 어디서든 접근이 가능함  

```js
function fn() {}
```



## Nested Function
: 다른 함수의 내부에 정의된 함수  
: 중첩 함수는 외부에서 직접 접근할 수 없어 비공개 함수처럼 만들 수 있음  
: 중첩 함수를 통해 모듈화나 캡슐화를 구현함  

```js
// 외부 함수 = 부모 함수
function outer() {

   var num = 0;

  // 내부 함수 = 자식 함수
  // 외부 함수가 호출될 때마다 내부 함수가 새로 생성됨 (새 실행 컨텍스트)
  // 외부 함수가 종료되면 내부 함수도 소멸됨
  function inner() {
    console.log(num);
  }
  inner();

  // 내부 함수를 반환하면 클로저가 형성될 수 있음
  // return inner;
}


// 클로저
function outer() {
  var num = 0;

  // 외부 함수가 종료되어도 내부 함수가 외부 함수의 변수에 접근할 수 있는 현상
  // 내부 함수가 반환되어 외부에서 호출될 때 클로저가 형성됨
  return function closure() {
    return num;
  };
}

// 내부 함수가 계속 외부 변수를 참조해 가비지 컬렉션으로부터 해제되지 않음
var ex = outer();
```



## Helper Function
: 다른 함수를 도와주는 보조적인 함수로 다른 함수 내부에서 동작함  
: 주 함수의 복잡성을 줄이고 반복되는 기능은 모듈화하여 로직을 분리하기 위해 사용  

```js
function formatDate(date) {
  return date.toLocaleDateString();
}
```



## Utility Function
: 재사용 가능한 특정 작업을 수행하는 함수  
: 일반적으로 순수 함수로 구현되며 다양한 컨텍스트에서 활용됨  

유틸리티 함수 | 역할 | 설명
---|---|---
once     | 함수 제어 | 특정 함수를 한 번만 실행되도록 제한함
debounce | 이벤트 최적화 | 일정 시간 동안 추가 호출이 없으면 실행됨 
throttle | 이벤트 최적화 | 일정 시간마다 한 번씩 실행되도록 제한함
memoize  | 캐싱 | 동일 입력값에 대해 캐싱하여 성능을 최적화함
compose  | 함수 제어 | 여러 함수를 오른쪽에서 왼쪽 순서로 실행함
pipe     | 함수 제어 | 여러 함수를 왼쪽에서 오른쪽 순서로 실행함


**Once Function**  
: 주어진 함수가 단 한 번만 실행되도록 보장하는 유틸리티 함수  
: 함수를 여러번 실행해도 최초로 실행 결과를 반환함  
: 초기화 작업, 이벤트 핸들러 등 함수 중복 실행을 방지해야하는 경우 사용  

```js
function once(fn) {
  let called = false;
  let result;
  return function(...args) {
    if(!called) {
      called = true;
      result = fn.apply(this, args);
    }
    return result;
  };
}
```


**Debounce Function**  
: 주어진 시간 동안 실행을 지연시키고 연속 호출시 마지막 호출만 실행되는 함수  
: 빠르게 연속적으로 발생하는 이벤트를 제어하기 위해 사용하여 성능을 최적화함  
: 주로 검색 입력, 스크롤 이벤트, 윈도우 리사이즈 등에 활용됨  

```js
// immediate가 참이면 첫 번째 호출을 즉시 실행하고 이후에는 대기 시간이 지나야 실행됨
function debounce(fn, delay, immediate = false) {
  let timer = null;
  return function (...args) {
    const context = this;
    const callNow = immediate && !timer;

    clearTimeout(timer);

    timer = setTimeout(() => {
      timer = null;
      if(!immediate) {
        fn.apply(context, args);
      }
    }, delay);

    if(callNow) {
      return fn.apply(context, args);
    }
  };
}
```


**Throttle Function**  
: 주어진 시간 간격으로 함수 실행을 제한하는 함수  
: 연속적으로 발생하는 이벤트를 지정된 주기마다 한 번씩만 실행되도록 함  

```js
function throttle(fn, delay) {
  let timer = 0;
  return function (...args) {
    const now = new Date().getTime();
    if(now - timer < delay) {
      return;
    }
    timer = now;
    return fn.apply(this, args);
  };
}
```


**Memoize Function**  
: 함수 호출 결과를 캐싱하여 동일한 입력에 대해 재계산을 방지하는 함수
: 계산 비용이 큰 순수 함수의 성능 최적화를 위해 사용됨

```js
function memoize(fn, resolver) {
  const cache = new Map();
  
  return function(...args) {
    const key = resolver ? resolver(...args) : JSON.stringify(args);

    if(cache.has(key)) 
      return cache.get(key);
 
    const result = fn.apply(this, args);
    cache.set(key, result);

    return result;
  };
}

var fibonacci = memoize(function(n) {
  if(n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
});
```


**Compose Function**  
: 여러 함수를 조합해 새로운 함수를 만드는 유틸리티 함수  
: 함수들을 오른쪽에서 왼쪽 방향으로 실행하며 각 함수의 결과가 다음 함수의 입력이 됨  
: 함수형 프로그래밍에서 데이터 변환 파이프라인 구축에 활용됨  

```js
function compose(...fns) {
  return function(x) {
    return fns.reduceRight((acc, fn) => fn(acc), x);
  };
}

var a = () => {}
var b = () => {}
var c = () => {}

// c => b => a 순으로 실행됨
var example = compose(a,b,c);
```


**Pipe Function**  
: Compose와 유사하지만 함수 적용 순서가 반대인 유틸리티 함수  
: 함수들을 왼쪽에서 오른쪽 방향으로 실행하며 각 함수의 결과가 다음 함수의 입력이 됨  

```js
function pipe(...fns) {
  return function(x) {
    return fns.reduce((acc, fn) => fn(acc), x);
  };
}
```



## Constructor Function
: new 키워드를 사용해 새로운 객체를 생성하는 함수  
: this가 암묵적으로 새 객체를 가리키며 반환값이 명시되지 않으면 해당 객체를 반환함  
: 데이터 캡슐화가 제한적이나 프로토타입 체인을 통해 메모리를 절약할 수 있음  
: 현재 자바스크립트 클래스는 내부적으로 생성자 함수를 기반으로 동작함  

```js
function Example(arg) {
  this.arg = arg;
}

var ex = new Example('constructor function');
// 함수가 new 키워드를 통해 호출되면
// Example 함수 내부 메소드가 실행되어 새 인스턴스 객체를 생성
// Example 함수 본문이 실행되고 함수 내의 this는 새로 생성된 객체를 가리킴
// Example 함수에 반환값이 명시되지 않으면 생성된 인스턴스를 반환함


// 생성자 함수 패턴
function Person(name, age) {

  // new 없이 호출해도 인스턴스 생성
  // 생성자 함수를 new 없이 호출하면 전역 객체를 오염시킬 수 있음
  if(!new.target) {
    return new Person(name, age);
  }

  // 속성
  this.name = name;
  this.age = age;

  // 비공개 변수
  var _name = name;

  // 생성자 함수의 비공개 변수에 접근 가능
  this.getName = function() {
    return _name;
  }

  // 모든 인스턴스가 공유하는 프로토타입 메소드
  // 일반적으로 생성자 함수 외부에 정의함
  Person.prototype.method = function() {}

}


// Object Pool 패턴
// 객체 생성을 최소화하고 객체를 재사용해 성능을 최적화하는 기법
function Person(name, age) {
  this.init(name, age);
}

Person.prototype.init = function(name, age) {
  this.name = name;
  this.age = age;
};

var PersonPool = {
  _pool: [],

  acquire: function(name, age) {
    if(this._pool.length > 0) {
      var person = this._pool.pop();
      person.init(name, age);
      return person;

    } else {
      return new Person(name, age);
    }
  },

  release: function(person) {
    this._pool.push(person);
  },
}
```



## Factory Function
: 객체를 생성해 반환하는 일반 함수  
: new 키워드를 사용하지 않고 간결한 객체 생성이 가능함  
: 클로저를 활용해 데이터 캡슐화가 가능하나 프로토타입 체인을 사용하지 않아 비효율적임  

```js
function example(arg) {
  return {
    arg,

    getArg() {
      return this.arg;
    }
  };
}

var ex = example('factory function');


// 프로토타입 기반 팩토리 함수
// Object.create()를 통해 프로토타입을 설정해 메소드를 공유하는 패턴
var exampleMethod = {
  getArg() {
    return this.arg;
  }
}

function createExample(arg) {
  var example = Object.create(exampleMethod);
  example.arg = arg;
  return example;
}

var ex = createExample('factory function');
```


**생성자 함수 vs 팩토리 함수**

항목 | 생성자 함수 | 팩토리 함수
---|---|---
객체 생성 | new 키워드를 사용해 객체 생성 | 함수 반환값으로 정의한 객체를 반환
프로토타입 | 프로토타입을 사용해 메소드 공유 | 프로토타입을 사용하지 않음
캡슐화 | 비공개 속성을 만들기 어려움 (제한적 구현) | 클로저를 통해 구현
상속 | 프로토타입을 통해 상속 구현 | 객체를 합성해 기능을 확장하는 방식
타입 확인 | instanceof를 통해 타입 확인 | 타입 확인 불가능 (커스텀 속성으로 구현)



## Callback Function
: 다른 함수의 인자로 전달되어 특정 시점에 호출되는 함수  
: 이벤트 처리, 고차 함수, 비동기 처리 등에 활용됨  

```js
function fn(arg, callback) {
  return arg + callback();
}

fn(1, () => 1) === 2
```



## Higher-Order Function
: 함수를 인자로 받거나 함수를 결과로 반환하는 함수  

```js
// 함수를 인자로 받음
function higherOrder(arg, callback) {
  return callback(arg);
}

// 함수를 반환함
function higherOrder(arg) {
  return function(a) {
    return a + arg;
  };
}

var add10 = higherOrder(10);
add10(20) === 30


// 함수 합성 패턴
function compose(fn1, fn2) {
  return function(arg) {
    return fn1(fn2(arg));
  };
}
```



## Bound Function
: Function.prototype.bind()를 통해 생성되어 특정 컨텍스트에 바인딩된 함수
: 생성된 함수는 원본 함수의 복제본으로 다시 바인딩될 수 없음  

```js
var obj = {
  key: 'value',
  getKey: function() {
    console.log(this);
    return this.key;
  }
};

// 다음처럼 호출하면 this가 손실됨
var example = obj.getKey;
example()

// bind()를 사용해 컨텍스트를 고정
var bound = obj.getKey.bind(obj);
bound()
```



## Recursive Function
: 함수 내부에서 자기 자신을 호출하는 함수  
: 제어가 없으면 무한히 반복하므로 종료 조건이 반드시 필요함  
: 재귀 함수는 호출마다 새로운 스택 프레임을 생성하므로 성능에 영향을 미침  
: 반복문으로 대체하거나 메모이제이션이나 트램폴린 패턴을 활용하면 성능을 개선할 수 있음  

```js
// 일반 재귀
function factorial(n) {
  return n <= 1 ? 1 : n * factorial(n-1);
}

// 재귀 + 메모이제이션
function factorialMemo(n, memo = {}) {
  if(n in memo) {
    return memo[n];
  }
  
  if(n <= 1) {
    return 1;
  }

  memo[n] = n * factorialMemo(n-1, memo);
  return memo[n];
}


// 꼬리 재귀
function factorialTail(n, acc = 1) {
  return n <= 1 ? acc : factorialTail(n-1, n*acc);
}

// 트램폴린 패턴
function trampoline(fn) {
  return function(...args) {
    var result = fn(...args);
    while(typeof result === 'function') {
      result = result();
    }
    return result;
  }
}

var factorialTram = trampoline(function _fn(n, acc = 1) {
  return n <= 1 ? acc : () => _fn(n-1, n*acc);
});
```


**Tail Call**  
: 함수가 실행될 때 마지막 부분에서 재귀 함수를 호출하는 패턴  
: 함수 끝에서 재귀를 호출해 새 스택 프레임을 생성하지 않고 기존 스택 프레임을 재사용함  
: ES2015에서 꼬리 호출 최적화를 도입했으나 현재 대부분의 브라우저에서 지원되지 않음  


**Trampoline**  
: 재귀 호출 대신 함수의 반환 값을 이용해 반복 실행하는 방식  
: 꼬리 호출 최적화를 보완하기 위해 고안됨  



## Async Function
: async 키워드를 사용해 정의된 함수  
: 비동기 작업을 동기적인 코드처럼 작성할 수 있게 하나 실제 동작은 비동기적으로 실행됨  
: [Promise](../js-object/class/js-class-promise.md)를 더 쉽게 다루기 위한 함수로 항상 Promise 객체를 반환함  
: 타이머 기반 작업, 파일 시스템 작업, 스트림 처리, 네트워크 요청 등에 사용됨  

```js
async function asyncFn() {
  return 'async function';
}

// promise
asyncFn()
  .then(result => console.log(result))
  .catch(error => console.error(error));

// async/await
async function example() {
  try {
    var result = await asyncFn();
    console.log(result);

  } catch(error) {
    console.error(error);
  }
}
```



## Generator Function
: function* 문법으로 정의된 함수로 제너레이터 객체를 반환함  
: 함수의 실행을 yield 키워드를 통해 단계적으로 나누고 이를 제어할 수 있음  
: yield 키워드를 통해 함수 실행을 중단하고 값을 반환하며 next()를 호출하면 중단 지점부터 다시 실행됨  

```js
function* generator() {
  yield 1;
  yield 2;
  yield 3;
  return '완료';
}

var ex = generator();
ex.next().value

for(const value of generator()) {
  console.log(value);
}


// yield*
// 다른 제너레이터의 결과를 위임함
function* generator() {
  yield 1;
  yield 2;
  yield* subGenerator();
  return '완료';
}

function* subGenerator() {
  yield 3;
  yield 4;
}

var ex = generator();
ex.next().value


// 지연 평가 패턴
// 값을 즉시 계산하지 않고 필요한 시점까지 지연함
function lazy(arr, callback) {
  return {
    [Symbol.iterator]: function* () {
      for(const item of arr) {
        yield callback(item);
      }
    },
  };
}

var arrDouble = lazy([1,2,3,4,5], (x) => {
  return x * 2;
});

var [first, second, third] = [...arrDouble];
first == 2
```
