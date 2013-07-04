---
title: 设计模式之观察者模式
layout: post
guid: urn:uuid:21a47a54-fe0a-4caa-bc60-201307041619
tags:
  - 设计模式
  - 学习
---

##题记
最近开始阅读`《Head First设计模式》`，所以有必要把自己学到的东西用blog的方式给记录下来，其中，大部分的源码和UML关系图均是来自于该书。在此，本系列的文章只是将学到的知识记录一下，必要的地方会加上个人的理解。

##正文
在我们的开发过程中，难免会遇到一种情况：存在一个主要对象，其他的对象因为由于数据的关系，必须依赖于这个对象产生的数据，但这个对象的数据总是处于不断的话当中，因此，我们希望这个主要对象的数据一旦发生变化，那么就能够及时的通知到依赖于它的对象。而当我们取消了这种依赖之后，随之而来就是不用再去通知已经取消的对象。其实，这个很像现在的`微信公众平台`，只要我们关注了某个公众账号后，公众账号就会不断的去推送最新的消息给关注者，而一旦取消关注后，这些推送也就中断了。在设计模式中，我们把这种行为称之为`观察者模式（observer pattern）`。

对于观察者模式，我们有着这样的书面定义：
>观察者模式定义了对象之间的一对多依赖，这样一来，当一个对象改变状态时，它的所有依赖者都会收到通知并自动更新。

观察者有着如下的类图：

<span class="img-800">![](/media/files/2013/07/04/observer-mode-1.png)</span>

其实这么看的话，也是不清不楚的，这个只是给出了观察者模式的一种通用类图，而至于如何具体的运作，我们也是不甚了解。

以下就是以天气通知为例，利用具体代码具体说明整个观察者模式。

<span class="img-800">![](/media/files/2013/07/04/WeatherData-1.png)</span>

其中，`Subject`为主题对象接口，也就是前面所说的数据变化的源头，其他对象都是它的观察者；`Observer`为观察者接口；`DisplayElement`为显示接口，这个由于每个观察者对于显示有着不同的要求，因此独立开辟这样一个接口。`WeatherData`继承了`Subject`接口，生成了具体的主题对象，而观察者真正观察到的数据，就是由该具体对象提供。`CurrentConditonsDisplay`、`ForecastDisplay`、`StatisticsDisplay`、`ThirdPartydDisplay`这几个则是真正的观察者，当主题对象的数据产生了变化之后，就会主动的一一通知到这些个观察者，然后由它们根据各自的显示需求显示相应的数据（由于显示要求的不同，因此它们也继承显示接口`DisplayElement`）。

下面就让我们看看具体的运作代码。

	//观察对象接口
	public interface Subject
	{
	    public void registerObserver(Observer o);
	    public void removeObserver(Observer o);
	    public void notifyObservers(Observer o);
	}
	
	//观察者接口
	public interface Observer
	{
	    public void update(float temp, float humidity, float pressure);
	}
	
	//显示接口
	public interface DisplayElement
	{
	    public void display();
	}

以上定义各个接口，以及其中需要继承的公用方法，下面就是各个具体对象的实现了。

	public class WeatherData implements Subject
	{
	    private ArrayList observers;
	    private float temperature;
	    private float humidity;
	    private float pressure;
	
	    public WeatherData()
	    {
	        observers = new ArrayList();
	    }
	
	    public void registerObserver(Observer o)
	    {
	        observers.add(o);
	    }
	
	    public void removeObserver(Observer o)
	    {
	        int i = observers.indexof(o);
	        if(i >= 0)
	        {
	            observers.remove(i);
	        }
	    }
	
	    public void notifyObservers(Observer o)
	    {
	        for(int i = 0; i < observers.size(); i++)
	        {
	            Observer observer = (Observer)observers.get(i);
	            observer.update(temperature, humidity, pressure);
	        }
	    }
	
	    public void measurementsChanged()
	    {
	        notifyObservers();
	    }
	
	    public void setMeasurements(float temperature, float humidity, float pressure)
	    {
	        this.temperature = temperature;
	        this.humidity = humidity;
	        this.pressure = pressure;
	        measurementsChanged();
	    }
	
	    // WeatherData的其他方法
	}

这个是主题对象的具体实现`WeatherData`，它继承了`Subject`接口，其中具体实现了各个方法，其中`setMeasurements()`方法则是保证了在发生了变化时，第一时间能够将数据的变化通知到各个观察者。接下来，就是等着实现各个观察者了，这里只拿一个观察者`CurrentConditonsDisplay`作为实现的案例。

	public class CurrentConditonsDisplay implements Observer, DisplayElement
	{
	    private float temperature;
	    private float humidity;
	    private Subject weatherData;
	
	    public CurrentConditonsDisplay(Subject weatherData)
	    {
	        this.weatherData = weatherData;
	        weatherData.registerObserver(this);
	    }
	
	    public void update(float temperature, float humidity, float pressure)
	    {
	        this.temperature = temperature;
	        this.humidity = humidity;
	        display();
	    }
	
	    public void display()
	    {
	        System.out.println("Current conditions: " + temperature + "F degree and " + humidity + "% humidity");
	    }
	}

这段代码似乎没有什么好说道的，唯一的特殊的地方就是在构建方法中，我们调用`Subject`对象，这在注册观察者时用到了，其实，在后期如果我们加上取消关注的时候，也是会用到这个对象的，所以从方便的角度考虑，我们在构造方法中调用了该对象。

剩下来就是个简单的测试代码了。

	public class WeatherStation()
	{
	    public static void main(String[] args)
	    {
	        WeatherData weatherData = new WeatherData();
	        CurrentConditonsDisplay currentDisplay = new CurrentConditonsDisplay(weatherData);
	        StatisticsDisplay statisticsDisplay = new StatisticsDisplay(weatherData);
	        ForecastDisplay forecastDisplay = new ForecastDisplay(weatherData);
	
	        weatherData.setMeasurements(80, 65, 30.4f);
	    }
	}

当我们理清了这些调用继承关系之后，豁然发现观察者模式其实挺简单的。而观察者模式的最重要的地方，就是在有一个主动数据源，多个被动读取数据的对象的情况下，让数据的操作变得单一简单，不会出现太多的对象操作数据的情况。