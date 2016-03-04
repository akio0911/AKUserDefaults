# AKUserDefaults
NSUserDefaults library with definition of structure

## Usage

```
class MyCustomUserDefaults : AKUserDefaults {
    let name = StringKey(key: "name")
    let age  = IntKey(key: "age")
}
```

```
let ud = MyCustomUserDefaults()


ud.name.set("sato")
ud.age.set(35)
ud.synchronize()

print(ud.name.get())
print(ud.age.get())


ud.name.set("suzuki")
ud.age.set(45)
ud.synchronize()
        
print(ud.name.get())
print(ud.age.get())
```
