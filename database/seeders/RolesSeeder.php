<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [
            'Gestion Usuarios', 'Crear Usuarios', 'Editar Usuarios', 'Eliminar Usuarios',
            'Roles y Permisos', 'Crear Roles', 'Eliminar Roles', 'Editar Roles',
            'Gestion Equipos', 'Crear Equipos', 'Editar Equipos', 'Eliminar Equipos',
            'Gestion Recursos', 'Crear Recursos', 'Editar Recursos', 'Eliminar Recursos',
            'Gestion Eventos', 'Crear Eventos', 'Editar Eventos', 'Eliminar Eventos',
            'Gestion Privilegios', 'Crear Privilegios', 'Editar Privilegios', 'Eliminar Privilegios',
            'Gestion Financiera',
        ];
        
        foreach ($permissions as $permissionName) {
            Permission::firstOrCreate(['name' => $permissionName, 'guard_name' => 'web']);
        }
        
        
    }
}
