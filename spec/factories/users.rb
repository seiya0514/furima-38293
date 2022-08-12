FactoryBot.define do
  factory :user do
    nickname { 'test' }
    email { 'test@test1234' }
    # ランダムで生成する際、英数字になるよう'1a'追加
    password { 'aaa111' }
    password_confirmation { password }
    last_name { '山田' }
    first_name { '陸太郎' }
    last_name_kana { 'ヤマダ' }
    first_name_kana { 'リクタロウ' }
    birthday { '2001-05-14' }
  end
end
