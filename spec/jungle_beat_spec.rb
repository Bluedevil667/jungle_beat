require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do

  it 'has list included' do
    jb = JungleBeat.new

  end

  it 'can acess head in list' do
    jb = JungleBeat.new

    expect(jb.list.head).to eq(nil)
  end

  it 'can append data' do
    jb = JungleBeat.new

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
  end

  it 'can access data in list' do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
   
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
  end

  it "can count sounds" do 
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    
    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
  end

  it 'can play sounds' do 
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    expect(jb.play).to eq("That sounded great!")
  end

  it 'can give feedback' do
    jb = JungleBeat.new
    jb.append("deep doo")

    expect(jb.play).to eq("That was good!")
  end

  it 'can change rate of playback' do 
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    expect(jb.rate = 100).to eq(100)
  end

  it 'can change voice' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    expect(jb.voice = "Alex").to eq("Alex")
  end

  it 'can reset voice' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.voice = "Alex"

    expect(jb.reset_voice).to eq("Daniel")
  end

  it 'can reset playback speed' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.rate = 100

    expect(jb.reset_rate).to eq(300)
  end
end