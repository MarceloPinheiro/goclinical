namespace :permissions do
  task(:permissions => :environment) do
    puts 'Entrou na task'
    arr = []
    controllers = Dir.new("#{Rails.root}/app/controllers").entries
    controllers.each do |entry|
      if entry =~ /_controller/
        arr << entry.camelize.gsub('.rb', '').constantize
      elsif entry =~ /^[a-z]*$/
        Dir.new("#{Rails.root}/app/controllers/#{entry}").entries.each do |x|
          if x =~ /_controller/
            arr << "#{entry.titleize}::#{x.camelize.gsub('.rb','')}".constantize
          end
        end
      end
    end

    arr.each do |controller|
      if controller.permission
        write_permission(controller.permission,"manage", 'manage')
        controller.action_methods.each do |method|
          if method =~ /^([A-Za-z\d*]+)+([\w]*)+([A-Za-z\d*]+)$/
            name, cancan_action = eval_cancan_action(method)
            write_permission(controller.permission,cancan_action, name)
          end
        end
      end
    end
  end

end

def eval_cancan_action(action)
  case action.to_s
  when "index"
    name = 'show'
    cancan_action = "index"
    action_desc = I18n.t :list
  when "new", "create"
    name = 'create'
    cancan_action = "create"
    action_desc = I18n.t :create
  when "show"
    name = 'show'
    cancan_action = "show"
    action_desc = I18n.t :show
  when "edit", "update"
    name = 'update'
    cancan_action = "update"
    action_desc = I18n.t :update
  when "delete","destroy"
    name = 'delete'
    cancan_action = "destroy"
    action_desc = I18n.t :destroy
  else
    name = action.to_s
    cancan_action = action.to_s
    action_desc = "Outro: " < cancan_action
  end
  return name, cancan_action
end

def write_permission(model, cancan_action, name)
  permission = Acesso.find(:first, :conditions => ["menusub.modulo=? and acao = ?", model, cancan_action])

end
